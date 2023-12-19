local c = require("nox-modus.palette")

local hl = vim.api.nvim_set_hl
local lsp = {}

lsp.set_highlights = function()
	-- LSP
	hl(0, "DiagnosticError", { fg = c.red, bg = "NONE" })
	hl(0, "DiagnosticSignError", { link = "DiagnosticError" })
	hl(0, "DiagnosticUnderlineError", { fg = "NONE", bg = "NONE", sp = c.red, undercurl = true })
	hl(0, "DiagnosticWarn", { fg = c.yellow, bg = "NONE" })
	hl(0, "DiagnosticSignWarn", { link = "DiagnosticWarn" })
	hl(0, "DiagnosticUnderlineWarn", { fg = "NONE", bg = "NONE", sp = c.yellow, undercurl = true })
	hl(0, "DiagnosticHint", { fg = c.white, bg = "NONE" })
	hl(0, "DiagnosticSignHint", { link = "DiagnosticHint" })
	hl(0, "DiagnosticUnderlineHint", { fg = "NONE", bg = "NONE", sp = c.purple, undercurl = true })
end

return lsp
