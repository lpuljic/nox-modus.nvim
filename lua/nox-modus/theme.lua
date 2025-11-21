local M = {}

-- Module-level configuration
local config = {
  clear_semantic_highlights = true,
  palette_override = {},
}

-- Simple list of all integrations - just add new ones here
local function get_integrations()
  local integration_modules = {
    "nox-modus.core.base",
    "nox-modus.integrations.gitsigns",
    "nox-modus.integrations.none-ls",
    "nox-modus.integrations.markdown",
    "nox-modus.integrations.nvim-cmp",
    "nox-modus.integrations.blink-cmp",
    "nox-modus.integrations.nvim-tree",
    "nox-modus.integrations.vim-fugitive",
    "nox-modus.integrations.nvim-telescope",
    "nox-modus.integrations.nvim-treesitter",
    "nox-modus.integrations.nvim-lspconfig",
    "nox-modus.integrations.semantic_tokens",
    "nox-modus.integrations.yaml",
    "nox-modus.integrations.vimdoc",
    "nox-modus.integrations.extmarks",

    -- Add new integrations here:
    -- "nox-modus.integrations.my-plugin",
  }

  local integrations = {}
  for _, module_name in ipairs(integration_modules) do
    local ok, module = pcall(require, module_name)
    if ok then
      table.insert(integrations, module)
    end
  end

  return integrations
end

---
--- nox-modus theme setup
---
-- @param opts table|nil: Optional table. Supported keys:
--   clear_semantic_highlights (boolean): Whether to clear semantic highlights (default: true)
--   palette_override (table): Override specific palette colors
function M.setup(opts)
  opts = opts or {}

  -- Update configuration
  config.clear_semantic_highlights = opts.clear_semantic_highlights
  if config.clear_semantic_highlights == nil then
    config.clear_semantic_highlights = true
  end
  config.palette_override = opts.palette_override or {}

  -- Only clear highlights and reset syntax if not already set to nox-modus
  if vim.g.colors_name ~= "nox-modus" then
    if vim.g.colors_name then
      vim.cmd("hi clear")
    end

    if vim.fn.exists("syntax_on") then
      vim.api.nvim_command("syntax reset")
    end

    vim.o.background = "dark"
    vim.g.colors_name = "nox-modus"
  end

  local base_palette = require("nox-modus.core.palette")
  local util = require("nox-modus.core.util")

  -- Apply palette overrides
  local palette = vim.tbl_deep_extend("force", base_palette, config.palette_override)

  -- Normalize hex colors in palette
  for key, value in pairs(palette) do
    if type(value) == "string" and util.is_valid_hex(value) then
      palette[key] = util.normalize_hex(value)
    elseif type(value) == "table" then
      for subkey, subvalue in pairs(value) do
        if type(subvalue) == "string" and util.is_valid_hex(subvalue) then
          palette[key][subkey] = util.normalize_hex(subvalue)
        end
      end
    end
  end

  -- Apply terminal colors
  util.apply_terminal_colors(palette)

  -- Collect all highlight groups before applying
  local all_groups = {}
  local integrations = get_integrations()

  for _, integration in ipairs(integrations) do
    local ok, highlight_groups = pcall(integration.highlight, palette)
    if ok and highlight_groups then
      all_groups = vim.tbl_deep_extend("force", all_groups, highlight_groups)
    end
  end

  -- Apply all highlights at once for better performance
  util.apply(all_groups)

  -- Optionally clear semantic highlights
  if config.clear_semantic_highlights then
    util.clear_semantic_highlights()
  end

  -- Set up autocommand for theme reapplication
  local augroup = vim.api.nvim_create_augroup("nox-modus", { clear = true })
  vim.api.nvim_create_autocmd("ColorScheme", {
    group = augroup,
    pattern = "nox-modus",
    callback = function()
      M.reload()
    end,
  })
end

-- Reload theme without changing configuration
function M.reload()
  M.setup(config)
end

-- Extend palette with user overrides
function M.extend_palette(overrides)
  config.palette_override = vim.tbl_deep_extend("force", config.palette_override, overrides)
  M.reload()
end

-- Get current palette for inspection
function M.get_palette()
  local base_palette = require("nox-modus.core.palette")
  return vim.tbl_deep_extend("force", base_palette, config.palette_override)
end

-- Get current configuration
function M.get_config()
  return vim.deepcopy(config)
end

return M
