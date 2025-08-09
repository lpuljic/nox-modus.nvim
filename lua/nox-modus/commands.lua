local M = {}

-- Display palette information
function M.show_palette_info()
  local theme = require("nox-modus.theme")
  local palette = theme.get_palette()

  local lines = { "# nox-modus Palette", "" }

  -- Core colors
  table.insert(lines, "## Core Colors")
  local core_colors = {
    "bg", "base", "dark", "dawn", "ash_grey", "gravel",
    "warm_grey", "storm_dust", "cascade", "monsoon", "olivine",
    "aluminium", "gun_powder", "grey_chateau", "zeus"
  }

  for _, color in ipairs(core_colors) do
    if palette[color] then
      table.insert(lines, string.format("%-15s %s", color, palette[color]))
    end
  end

  table.insert(lines, "")
  table.insert(lines, "## Accent Colors")
  local accent_colors = {
    "celestial_blue", "purple", "red", "mocha", "orange", "sunglow", "golden_glow"
  }

  for _, color in ipairs(accent_colors) do
    if palette[color] then
      table.insert(lines, string.format("%-15s %s", color, palette[color]))
    end
  end

  -- Git colors
  if palette.git then
    table.insert(lines, "")
    table.insert(lines, "## Git Colors")
    for key, value in pairs(palette.git) do
      table.insert(lines, string.format("%-15s %s", key, value))
    end
  end

  -- Diagnostic colors
  if palette.diagnostics then
    table.insert(lines, "")
    table.insert(lines, "## Diagnostic Colors")
    for key, value in pairs(palette.diagnostics) do
      table.insert(lines, string.format("%-15s %s", key, value))
    end
  end

  -- Terminal colors
  if palette.terminal then
    table.insert(lines, "")
    table.insert(lines, "## Terminal Colors")
    for i = 0, 15 do
      local key = "terminal_color_" .. i
      if palette.terminal[key] then
        table.insert(lines, string.format("%-18s %s", key, palette.terminal[key]))
      end
    end
  end

  -- Create a new buffer with the palette information
  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)
  vim.api.nvim_buf_set_option(buf, "filetype", "markdown")
  vim.api.nvim_buf_set_option(buf, "modifiable", false)

  -- Open the buffer in a new window
  vim.cmd("split")
  local win = vim.api.nvim_get_current_win()
  vim.api.nvim_win_set_buf(win, buf)
  vim.api.nvim_buf_set_name(buf, "nox-modus-palette")

  -- Set buffer options
  vim.api.nvim_buf_set_keymap(buf, 'n', 'q', ':close<CR>', { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(buf, 'n', '<Esc>', ':close<CR>', { noremap = true, silent = true })
end

-- Show current configuration
function M.show_config_info()
  local theme = require("nox-modus.theme")
  local config = theme.get_config()

  local lines = { "# nox-modus Configuration", "" }

  -- Current settings
  table.insert(lines, "## Current Settings")
  table.insert(lines, string.format("clear_semantic_highlights: %s", tostring(config.clear_semantic_highlights)))
  table.insert(lines, "")

  -- Palette overrides
  if next(config.palette_override) then
    table.insert(lines, "## Palette Overrides")
    for key, value in pairs(config.palette_override) do
      if type(value) == "table" then
        table.insert(lines, string.format("%s:", key))
        for subkey, subvalue in pairs(value) do
          table.insert(lines, string.format("  %-15s %s", subkey, tostring(subvalue)))
        end
      else
        table.insert(lines, string.format("%-15s %s", key, tostring(value)))
      end
    end
    table.insert(lines, "")
  end

  -- Plugin settings
  if next(config.plugins) then
    table.insert(lines, "## Plugin Settings")
    for plugin, enabled in pairs(config.plugins) do
      table.insert(lines, string.format("%-20s %s", plugin, tostring(enabled)))
    end
    table.insert(lines, "")
  end

  -- Usage examples
  table.insert(lines, "## Usage Examples")
  table.insert(lines, "")
  table.insert(lines, "```lua")
  table.insert(lines, "-- Override palette colors")
  table.insert(lines, 'require("nox-modus").setup({')
  table.insert(lines, "  palette_override = {")
  table.insert(lines, '    bg = "#000000",')
  table.insert(lines, '    red = "#ff0000"')
  table.insert(lines, "  }")
  table.insert(lines, "})")
  table.insert(lines, "")
  table.insert(lines, "-- Disable specific plugins")
  table.insert(lines, 'require("nox-modus").setup({')
  table.insert(lines, "  plugins = {")
  table.insert(lines, '    ["nvim-cmp"] = false,')
  table.insert(lines, '    ["nvim-tree"] = true')
  table.insert(lines, "  }")
  table.insert(lines, "})")
  table.insert(lines, "```")

  -- Create a new buffer with the config information
  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)
  vim.api.nvim_buf_set_option(buf, "filetype", "markdown")
  vim.api.nvim_buf_set_option(buf, "modifiable", false)

  -- Open the buffer in a new window
  vim.cmd("split")
  local win = vim.api.nvim_get_current_win()
  vim.api.nvim_win_set_buf(win, buf)
  vim.api.nvim_buf_set_name(buf, "nox-modus-config")

  -- Set buffer options
  vim.api.nvim_buf_set_keymap(buf, 'n', 'q', ':close<CR>', { noremap = true, silent = true })
  vim.api.nvim_buf_set_keymap(buf, 'n', '<Esc>', ':close<CR>', { noremap = true, silent = true })
end

-- Setup commands
function M.setup()
  vim.api.nvim_create_user_command("NoxModusInfo", function(opts)
    if opts.args == "config" then
      M.show_config_info()
    else
      M.show_palette_info()
    end
  end, {
    nargs = "?",
    complete = function()
      return { "config" }
    end,
    desc = "Show nox-modus palette or configuration info"
  })

  vim.api.nvim_create_user_command("NoxModusPalette", M.show_palette_info, {
    desc = "Show nox-modus color palette"
  })

  vim.api.nvim_create_user_command("NoxModusConfig", M.show_config_info, {
    desc = "Show nox-modus configuration"
  })
end

return M
