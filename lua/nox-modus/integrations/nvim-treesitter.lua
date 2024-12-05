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
		-- Comment
		["@comment"] = { link = "Comment" },
		["@comment.error"] = { fg = c.red },
		["@comment.warning"] = { fg = c.sunglow },
		["@comment.todo"] = { fg = c.purple },
		["@comment.hint"] = { fg = c.celestial_blue },
		["@comment.note"] = { fg = c.celestial_blue },

		-- Identifiers
		["@variable"] = { link = "Identifier" },
		["@variable.builtin"] = { fg = c.grey_chateau },

		-- Literals
		["@string"] = { link = "String" },
		["@string.documentation"] = { link = "String" },
		["@string.regex"] = { link = "Constant" },
		["@string.escape"] = { link = "Constant" },
		["@string.special"] = { link = "Contstant" },

		-- Functions
		["@function"] = { link = "Function" },
		["@function.builtin"] = { link = "Function" },
		["@function.method.call"] = { fg = c.cascade, italic = true },
		["@function.macro"] = { link = "macro" },
		["@constructor"] = { link = "Function" },

		["@method"] = { link = "Function" },
		["@parameter"] = { link = "Identifier" },

		-- Markup
		["@markup.raw.markdown_inline"] = { fg = c.grey_chateau },
		["@markup.link.markdown_inline"] = { fg = c.grey_chateau },
		["@markup.link.label.markdown_inline"] = { fg = c.grey_chateau },
		["@nospell.markdown_inline"] = { fg = c.base },
		["@markup.raw.block.markdown"] = { fg = c.grey_chateau },
		["@markup.quote"] = { link = "RenderMarkdownQuote" },
		["@markup.heading.1.markdown"] = { link = "markdownH1" },
		["@markup.heading.2.markdown"] = { link = "markdownH2" },
		["@markup.heading.3.markdown"] = { link = "markdownH3" },
		["@_label.markdown_inline"] = { link = "Label" },
	}
end

return M
