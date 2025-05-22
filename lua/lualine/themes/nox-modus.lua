-- nox-modus colorscheme for lualine.
local colors = {
  gray05 = "#4a4a4a",
  bg = "#303030",
}

return {
  normal = {
    a = { fg = colors.grey01, bg = colors.bg },
    b = { fg = colors.grey01, bg = colors.gray05 },
    c = { fg = colors.grey01, bg = colors.bg },
  },
  insert = {
    a = { fg = colors.fg, bg = colors.bg, gui = "bold" },
  },
  visual = {
    a = { fg = colors.fg, bg = colors.bg, gui = "bold" },
  },
  command = {
    a = { fg = colors.fg, bg = colors.bg, gui = "bold" },
  },
  replace = {
    a = { fg = colors.fg, bg = colors.bg, gui = "bold" },
  },
  inactive = {
    a = { fg = colors.grey01, bg = colors.bg },
    b = { fg = colors.grey01, bg = colors.bg },
    c = { fg = colors.grey01, bg = colors.bg },
  },
}
