local M = {}

---
--- nox-modus theme setup
---
-- @param opts table|nil: Optional table. Supported keys:
--   clear_semantic_highlights (boolean): Whether to clear semantic highlights (default: true)
function M.setup(opts)
  opts = opts or {}
  local clear_semantic = opts.clear_semantic_highlights
  if clear_semantic == nil then clear_semantic = true end

  -- Only clear highlights and reset syntax if not already set to nox-modus
  if vim.g.colors_name ~= "nox-modus" then
    if vim.g.colors_name then
      vim.cmd("hi clear")
    end

    if vim.fn.exists("syntax_on") then
      vim.api.nvim_command("syntax reset")
    end

    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "nox-modus"
  end

  local palette = require("nox-modus.palette")
  local util = require("nox-modus.util")
  local integrations = require("nox-modus.integrations")

  -- Integrate with other plugins, with error handling
  for _, integration in ipairs(integrations) do
    local ok, highlightedGroup = pcall(integration.highlight, palette)
    if ok and highlightedGroup then
      util.initialise(highlightedGroup)
    end
  end

  -- Optionally hide all semantic highlights.
  if clear_semantic then
    for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
      vim.api.nvim_set_hl(0, group, {})
    end
  end

  -- print(vim.inspect(integrations))
end

return M
