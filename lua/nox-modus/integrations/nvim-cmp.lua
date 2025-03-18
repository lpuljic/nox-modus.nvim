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
		-- hrsh7th/nvim-cmp
		CmpPmenuSel = { fg = c.base, bg = c.gravel },
		CmpItemAbbrDeprecated = { fg = c.ash_grey, strikethrough = true },
		CmpItemAbbrMatch = { fg = c.sunglow },
		CmpItemAbbrMatchFuzzy = { fg = c.base },
		CmpItemKind = { fg = c.grey_chateau },
	}
end

return M
