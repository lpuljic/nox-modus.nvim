-- Telescope
local c = require("nox-modus.palette")

local hl = vim.api.nvim_set_hl
local telescope = {}

telescope.set_highlights = function()
	hl(0, "TelescopeSelection", { fg = "NONE", bg = c.gray01 })
	hl(0, "TelescopeSelectionCaret", { fg = c.grayish_blue, bg = "NONE" })
	hl(0, "TelescopeBorder", { fg = c.gray05, bg = "NONE" })
	hl(0, "TelescopePromptfix", { fg = c.red, bg = "NONE" })
	hl(0, "TelescopePromptBorder", { fg = c.grayish_blue, bg = "NONE" })
	hl(0, "TelescopeResultsBorder", { fg = c.gray05, bg = "NONE" })
	hl(0, "TelescopePreviewBorder", { fg = c.gray05, bg = "NONE" })
	hl(0, "TelescopeMatching", { fg = c.yellow, bg = "NONE" })
	hl(0, "TelescopePromptPrefix", { fg = c.grayish_blue, bg = "NONE" })
	hl(0, "TelescopePromptTitle", { fg = c.grayish_blue, bg = "NONE" })
end

return telescope
