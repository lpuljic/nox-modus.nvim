local c = require("nox-modus.palette")

local hl = vim.api.nvim_set_hl
local theme = {}

theme.set_highlights = function()
	-- Git
	hl(0, "SignAdd", { fg = c.green, bg = "NONE" })
	hl(0, "SignChange", { fg = c.orange, bg = "NONE" })
	hl(0, "SignDelete", { fg = c.red, bg = "NONE" })
	hl(0, "GitSignsAdd", { fg = c.green, bg = "NONE" })
	hl(0, "GitSignsChange", { fg = c.orange, bg = "NONE" })
	hl(0, "GitSignsDelete", { fg = c.red, bg = "NONE" })
	hl(0, "gitCommitSummary", { fg = c.fg, bg = c.bg, italic = true })
	hl(0, "gitCommitSelectedFile", { fg = c.light_blue, bg = c.bg, italic = true })
end
return theme
