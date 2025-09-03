-- nox-modus colorscheme for lualine.
local c = require("nox-modus.core.palette")

return {
  normal = {
    a = { fg = c.base, bg = c.storm_dust },
    b = { fg = c.base, bg = c.storm_dust },
    c = { fg = c.base, bg = c.gravel },
  },
  -- insert = {
  --   a = { fg = palette.bg, bg = palette.olivine, gui = "bold" },
  --   b = { fg = palette.ash_grey, bg = palette.storm_dust },
  --   c = { fg = palette.ash_grey, bg = palette.bg },
  -- },
  -- visual = {
  --   a = { fg = palette.bg, bg = palette.celestial_blue, gui = "bold" },
  --   b = { fg = palette.ash_grey, bg = palette.storm_dust },
  --   c = { fg = palette.ash_grey, bg = palette.bg },
  -- },
  -- command = {
  --   a = { fg = palette.bg, bg = palette.sunglow, gui = "bold" },
  --   b = { fg = palette.ash_grey, bg = palette.storm_dust },
  --   c = { fg = palette.ash_grey, bg = palette.bg },
  -- },
  -- replace = {
  --   a = { fg = palette.bg, bg = palette.red, gui = "bold" },
  --   b = { fg = palette.ash_grey, bg = palette.storm_dust },
  --   c = { fg = palette.ash_grey, bg = palette.bg },
  -- },
  -- inactive = {
  --   a = { fg = palette.warm_grey, bg = palette.bg },
  --   b = { fg = palette.warm_grey, bg = palette.bg },
  --   c = { fg = palette.warm_grey, bg = palette.bg },
  -- },
}
