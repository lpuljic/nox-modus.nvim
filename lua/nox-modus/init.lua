local M = {}

function M.load()
  -- Clear previous colorscheme
  if vim.g.colors_name then vim.cmd("hi clear") end
  if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "nox-modus"

  -- Load everything
  local palette = require("nox-modus.core.palette")
  local util = require("nox-modus.core.util")
  local integrations = require("nox-modus.integrations")
  
  -- Apply terminal colors and highlights
  util.apply_terminal_colors(palette)
  
  local all_groups = {}
  for _, integration in ipairs(integrations) do
    local ok, groups = pcall(integration.highlight, palette)
    if ok and groups then
      all_groups = vim.tbl_deep_extend("force", all_groups, groups)
    end
  end
  util.apply(all_groups)
  util.clear_semantic_highlights()
end

-- Simple setup for optional configuration
function M.setup(opts)
  opts = opts or {}
  
  -- Basic palette override support
  if opts.palette_override then
    local palette = require("nox-modus.core.palette")
    for key, value in pairs(opts.palette_override) do
      palette[key] = value
    end
  end
  
  M.load()
end

return M
