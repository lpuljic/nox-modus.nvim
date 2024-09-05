
-- Colorscheme for lualine
local colors = {
    gray01 = "#c9c9c9",
    gray02 = "#7c8c95",
    gray03 = "#72b499",
    gray04 = "#AbAbAf",
    gray05 = "#4a4a4a",
    orange = "#FF8800",
    bg = "#303030",
  }
  
  return {
    normal = {
        a = { fg = colors.grey01, bg = colors.bg },
        b = { fg = colors.grey01, bg = colors.gray05 },
        c = { fg = colors.grey01, bg = colors.bg },
    },
    insert = { a = { fg = colors.fg, bg = colors.bg, gui = "bold" } },
    visual = { a = { fg = colors.fg, bg = colors.bg, gui = "bold" } },
    command = { a = { fg = colors.fg, bg = colors.bg, gui = "bold" } },
    replace = { a = { fg = colors.fg, bg = colors.bg, gui = "bold" } },
    inactive = {
        a = { fg = colors.grey01, bg = colors.bg },
        b = { fg = colors.grey01, bg = colors.bg },
        c = { fg = colors.grey01, bg = colors.bg },
    },
}

