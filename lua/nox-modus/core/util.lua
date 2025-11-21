local util = {}

-- Cache for semantic token groups to avoid repeated getcompletion calls
local semantic_groups_cache = nil

local function highlight(name, value)
  vim.api.nvim_set_hl(0, name, value)
end

-- Apply all highlights at once for better performance
function util.apply(groups)
  for name, value in pairs(groups) do
    highlight(name, value)
  end
end

-- Normalize hex color to lowercase
function util.normalize_hex(hex)
  return hex:lower()
end

-- Validate hex color format
function util.is_valid_hex(hex)
  if type(hex) ~= "string" then
    return false
  end
  return hex:match("^#[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F]$") ~= nil
end

---Converts a hex color code string to a table of integer values
---@param hex_str string: Hex color code of the format `#rrggbb`
---@return table|nil rgb: Table of {r, g, b} integers or nil if invalid
local function hexToRgb(hex_str)
  local r, g, b = string.match(hex_str, "^#(%x%x)(%x%x)(%x%x)")
  if not r then
    vim.notify("nox-modus: Invalid hex string: " .. tostring(hex_str), vim.log.levels.WARN)
    return nil
  end
  return { tonumber(r, 16), tonumber(g, 16), tonumber(b, 16) }
end

---Blends two hex colors, given a blending amount
---@param fg string: A hex color code of the format `#rrggbb`
---@param bg string: A hex color code of the format `#rrggbb`
---@param alpha number: A blending factor, between `0` and `1`.
---@return string hex: A blended hex color code of the format `#rrggbb`
function util.blend(fg, bg, alpha)
  -- Validate and clamp alpha
  alpha = math.max(0, math.min(1, alpha))
  if alpha == 0 then return fg end
  if alpha == 1 then return bg end

  -- Convert hex colors to RGB
  local bg_rgb = hexToRgb(bg)
  local fg_rgb = hexToRgb(fg)
  if not bg_rgb or not fg_rgb then
    return fg -- fallback to fg if invalid color
  end

  -- Blend each RGB channel
  local blended = {}
  for i = 1, 3 do
    local ret = ((1 - alpha) * fg_rgb[i] + (alpha * bg_rgb[i]))
    blended[i] = math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  -- Convert back to hex
  return string.format("#%02x%02x%02x", blended[1], blended[2], blended[3])
end

-- Clear semantic highlights with caching
function util.clear_semantic_highlights()
  -- Skip if LSP is not available
  if not vim.lsp or not vim.lsp.start_client then
    return
  end

  -- Cache the list of semantic groups to avoid repeated getcompletion calls
  if not semantic_groups_cache then
    semantic_groups_cache = vim.fn.getcompletion("@lsp", "highlight")
  end

  for _, group in ipairs(semantic_groups_cache) do
    vim.api.nvim_set_hl(0, group, {})
  end
end

-- Apply terminal colors
function util.apply_terminal_colors(colors)
  if not colors.terminal then
    return
  end

  for name, color in pairs(colors.terminal) do
    vim.g[name] = color
  end
end

return util
