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
		-- Markdown
		markdownCode = { fg = c.mocha },
		markdownCodeBlock = { fg = c.gravel },
		markdownCodeDelimiter = { fg = c.base },
		markdownBlockquote = { fg = c.mocha },
		markdownH1 = { fg = c.celestial_blue, bold = true },
		markdownH2 = { fg = c.celestial_blue, bold = true },
		markdownH3 = { fg = c.celestial_blue, bold = true },
		markdownH4 = { fg = c.celestial_blue, bold = true },
		markdownH5 = { fg = c.celestial_blue, bold = true },
		markdownH6 = { fg = c.celestial_blue, bold = true },
		markdownListMarker = { fg = c.celestial_blue },
		markdownOrderedListMarker = { fg = c.celestial_blue },
		markdownUrl = { fg = c.base },
		markdownLinkText = { fg = c.mocha, underline = true },
		markdownHeadingDelimiter = { fg = c.celestial_blue },
		markdownId = { link = "Identifier" },
		markdownItalic = { link = "Italic" },
		markdownBoldItalic = { fg = c.sunglow, bold = true, italic = true },
		markdownBold = { bold = true },
		RenderMarkdownCode = { bg = c.zeus },
	}
end

return M
