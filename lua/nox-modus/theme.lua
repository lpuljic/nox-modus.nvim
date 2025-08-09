local M = {}

-- Module-level configuration
local config = {
  clear_semantic_highlights = true,
  palette_override = {},
  plugins = {},
}

-- Plugin detection helper
local function has_plugin(plugin_name)
  return package.loaded[plugin_name] ~= nil or vim.fn.exists("g:loaded_" .. plugin_name:gsub("[^%w]", "_")) == 1
end

-- Get list of available integrations with plugin detection
local function get_integrations()
  local available_integrations = {
    { name = "base",            module = "nox-modus.core.base",                    always_load = true },
    { name = "gitsigns",        module = "nox-modus.integrations.gitsigns",        plugin = "gitsigns" },
    { name = "none-ls",         module = "nox-modus.integrations.none-ls",         plugin = "null-ls" },
    { name = "markdown",        module = "nox-modus.integrations.markdown",        always_load = true },
    { name = "nvim-cmp",        module = "nox-modus.integrations.nvim-cmp",        plugin = "cmp" },
    { name = "nvim-tree",       module = "nox-modus.integrations.nvim-tree",       plugin = "nvim-tree" },
    { name = "vim-fugitive",    module = "nox-modus.integrations.vim-fugitive",    plugin = "fugitive" },
    { name = "nvim-telescope",  module = "nox-modus.integrations.nvim-telescope",  plugin = "telescope" },
    { name = "nvim-treesitter", module = "nox-modus.integrations.nvim-treesitter", plugin = "nvim-treesitter" },
    { name = "nvim-lspconfig",  module = "nox-modus.integrations.nvim-lspconfig",  plugin = "lspconfig" },
    { name = "semantic_tokens", module = "nox-modus.integrations.semantic_tokens", always_load = true },
    { name = "yaml",            module = "nox-modus.integrations.yaml",            always_load = true },
    { name = "vimdoc",          module = "nox-modus.integrations.vimdoc",          always_load = true },
    -- Add new integrations here:
    -- { name = "my-plugin",    module = "nox-modus.integrations.my-plugin",    plugin = "my-plugin" },
  }

  local integrations = {}
  for _, integration in ipairs(available_integrations) do
    local should_load = integration.always_load or
        (integration.plugin and has_plugin(integration.plugin))

    local user_enabled = config.plugins[integration.name]
    if user_enabled == false then
      should_load = false
    elseif user_enabled == true then
      should_load = true
    end

    if should_load then
      local ok, module = pcall(require, integration.module)
      if ok then
        table.insert(integrations, module)
      end
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
--   plugins (table): Enable/disable specific plugin integrations
function M.setup(opts)
  opts = opts or {}

  -- Update configuration
  config.clear_semantic_highlights = opts.clear_semantic_highlights
  if config.clear_semantic_highlights == nil then
    config.clear_semantic_highlights = true
  end
  config.palette_override = opts.palette_override or {}
  config.plugins = opts.plugins or {}

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

  -- Setup commands
  require("nox-modus.commands").setup()
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
