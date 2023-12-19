-- Nvim-Cmp
local c = require("nox-modus.palette")

local hl = vim.api.nvim_set_hl
local nvim_cmp = {}

nvim_cmp.set_highlights = function()
	hl(0, "CmpPmenuSel", { fg = "NONE", bg = c.gray01 })
	hl(0, "CmpItemAbbrDeprecated", { fg = c.gray03, bg = "NONE", strikethrough = true })
	hl(0, "CmpItemAbbrMatch", { fg = c.fg, bg = "NONE" })
	hl(0, "CmpItemAbbrMatchFuzzy", { fg = c.fg, bg = "NONE" })
end

return nvim_cmp
