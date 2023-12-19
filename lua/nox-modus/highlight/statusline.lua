-- StatusLine
local c = require("nox-modus.palette")

local hl = vim.api.nvim_set_hl
local statusline = {}

statusline.set_highlights = function()
	hl(0, "StatusLine", { fg = c.gray03, bg = c.gray01 })
	hl(0, "StatusLineNC", { fg = c.gray02, bg = c.gray01 })
	hl(0, "StatusLineSeparator", { fg = c.gray03, bg = "NONE" })
	hl(0, "StatusLineTerm", { fg = c.gray03, bg = "NONE" })
	hl(0, "StatusLineTermNC", { fg = c.gray03, bg = "NONE" })
end

return statusline
