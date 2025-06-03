local util = {}

local function highlight(name, value)
  vim.api.nvim_set_hl(0, name, value)
end

function util.initialise(group)
  for name, value in pairs(group) do
    highlight(name, value)
  end
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
  local bg_rgb = hexToRgb(bg)
  local fg_rgb = hexToRgb(fg)
  if not bg_rgb or not fg_rgb then
    return fg -- fallback to fg if invalid color
  end

  local blendChannel = function(i)
    local ret = ((1 - alpha) * fg_rgb[i] + (alpha * bg_rgb[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format("#%02X%02X%02X", blendChannel(1), blendChannel(2), blendChannel(3))
end

return util
