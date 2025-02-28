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
		-- nvim-telescope/telescope.nvim
		TelescopePromptNormal = { bg = c.zeus },
		TelescopeSelection = { bg = c.gravel },
		TelescopeSelectionCaret = { fg = c.grey_chateau },
		TelescopeBorder = { fg = c.warm_grey },
		TelescopePromptfix = { fg = c.red },
		TelescopePromptBorder = { fg = c.grey_chateau },
		TelescopeResultsBorder = { fg = c.warm_grey },
		TelescopePreviewBorder = { fg = c.warm_grey },
		TelescopeMatching = { fg = c.sunglow, italic = true, bold = true },
		TelescopePromptPrefix = { fg = c.grey_chateau },
		TelescopePromptTitle = { fg = c.grey_chateau },
		TelescopeResultsComment = { fg = c.storm_dust },
	}
end

return M
