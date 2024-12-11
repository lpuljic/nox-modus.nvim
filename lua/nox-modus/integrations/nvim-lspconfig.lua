local util = require("nox-modus.util")
local M = {}
--Style Options:
--
--    o: standout
--    u: underline
--    c: undercurl
--    d: underdouble
--    t: underdotted
--    h: underdashed
--    s: strikethrough
--    i: italic
--    b: bold
--    r: reverse
--    n: nocombine

function M.highlight(c)
	return {
		-- neovim/nvim-lspconfig
		DiagnosticOk = { fg = c.olivine },
		DiagnosticError = { fg = c.diagnostics.DiagnosticError }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticWarn = { fg = c.sunglow }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticInfo = { fg = c.celestial_blue }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticHint = { fg = c.celestial_blue }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticVirtualTextError = {
			bg = util.blend(c.bg, c.diagnostics.DiagnosticError, 0.12),
			fg = c.diagnostics.DiagnosticError,
		}, -- Used for "Error" diagnostic virtual text
		DiagnosticVirtualTextWarn = { bg = util.blend(c.bg, c.sunglow, 0.12), fg = c.sunglow }, -- Used for "Warning" diagnostic virtual text
		DiagnosticVirtualTextInfo = { bg = util.blend(c.bg, c.celestial_blue, 0.12), fg = c.celestial_blue }, -- Used for "Information" diagnostic virtual text
		DiagnosticVirtualTextHint = { bg = util.blend(c.bg, c.celestial_blue, 0.12), fg = c.celestial_blue }, -- Used for "Hint" diagnostic virtua
		DiagnosticUnderlineError = { sp = c.diagnostics.DiagnosticError, underline = true }, -- Used to underline "Error" diagnostics
		DiagnosticUnderlineWarn = { sp = c.sunglow, underline = true }, -- Used to underline "Warning" diagnostics
		DiagnosticUnderlineInfo = { sp = c.celestial_blue, underline = true }, -- Used to underline "Information" diagnostics
		DiagnosticUnderlineHint = { sp = c.celestial_blue, underline = true }, -- Used to underline "Hint" diagn
		DiagnosticUnnecessary = {},
		LspReferenceText = { bg = c.gravel }, -- used for highlighting "text" references
		LspReferenceRead = { bg = c.gravel }, -- used for highlighting "read" references
		LspReferenceWrite = { bg = c.gravel }, -- used for highlighting "write" references
	}
end

return M
