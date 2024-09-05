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
	DiagnosticError = { fg = c.red },  -- Used as the base highlight group. Other Diagnostic highlights link to this by default
	DiagnosticWarn = { fg = c.sunglow },  -- Used as the base highlight group. Other Diagnostic highlights link to this by default
	DiagnosticInfo = { fg = c.celestial_blue },  -- Used as the base highlight group. Other Diagnostic highlights link to this by default
	DiagnosticHint = { fg = c.celestial_blue },  -- Used as the base highlight group. Other Diagnostic highlights link to this by default
	DiagnosticVirtualTextError = { fg = c.red }, -- Used for "Error" diagnostic virtual text
	DiagnosticVirtualTextWarn = { fg = c.sunglow },  -- Used for "Warning" diagnostic virtual text
	DiagnosticVirtualTextInfo = { fg = c.celestial_blue },  -- Used for "Information" diagnostic virtual text
	DiagnosticVirtualTextHint = { fg = c.celestial_blue },  -- Used for "Hint" diagnostic virtua
	DiagnosticUnderlineError = { sp = c.red, undercurl = true },  -- Used to underline "Error" diagnostics
	DiagnosticUnderlineWarn = { sp = c.sunglow, undercurl = true },  -- Used to underline "Warning" diagnostics
	DiagnosticUnderlineInfo = { sp = c.celestial_blue, undercurl = true },  -- Used to underline "Information" diagnostics
	DiagnosticUnderlineHint = { sp = c.celestial_blue, undercurl = true },  -- Used to underline "Hint" diagn
	LspReferenceText = { bg = c.gravel },  -- used for highlighting "text" references
	LspReferenceRead = { bg = c.gravel },  -- used for highlighting "read" references
	LspReferenceWrite = { bg = c.gravel },  -- used for highlighting "write" references
    }
end

return M
