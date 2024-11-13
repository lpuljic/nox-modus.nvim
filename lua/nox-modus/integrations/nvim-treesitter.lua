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
		-- Treesitter
		["@comment"] = { link = "Comment" },
		["@comment.error"] = { fg = c.red },
		["@comment.warning"] = { fg = c.sunglow },
		["@comment.todo"] = { fg = c.purple },
		["@comment.hint"] = { fg = c.celestial_blue },
		["@comment.note"] = { fg = c.celestial_blue },
		["@variable"] = { link = "Identifier" },
		["@variable.builtin"] = { fg = c.grey_chateau },
		["@string"] = { link = "String" },
		["@string.documentation"] = { link = "String" },
		["@string.regex"] = { link = "Constant" },
		["@string.escape"] = { link = "Constant" },
		["@string.special"] = { link = "Contstant" },
		["@function"] = { link = "Function" },
		["@function.builtin"] = { link = "Function" },
		["@function.method.call"] = { fg = c.cascade, italic = true },
		["@function.macro"] = { link = "macro" },
		["@method"] = { link = "Function" },
		["@constructor"] = { link = "Function" },
		["@parameter"] = { link = "Identifier" },
		["@markup.raw.markdown_inline"] = { fg = c.grey_chateau },
		["@markup.link.markdown_inline"] = { fg = c.grey_chateau },
		["@_label.markdown_inline"] = { link = "Label" },
		["@markup.link.label.markdown_inline"] = { fg = c.grey_chateau },
		["@nospell.markdown_inline"] = { fg = c.base },
		["@markup.raw.block.markdown"] = { fg = c.grey_chateau },
		["@markup.quote"] = { link = "RenderMarkdownQuote" },
		["@markup.heading.1.markdown"] = { link = "markdownH1" },
		["@markup.heading.2.markdown"] = { link = "markdownH2" },
		["@markup.heading.3.markdown"] = { link = "markdownH3" },
	}
end

return M
