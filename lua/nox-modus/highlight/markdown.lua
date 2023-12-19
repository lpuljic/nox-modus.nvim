local c = require("nox-modus.palette")

local hl = vim.api.nvim_set_hl
local markdown = {}

markdown.set_highlights = function()
	-- Markdown
	hl(0, "markdownBlockquote", { fg = c.md_orange, bg = "NONE" })
	hl(0, "markdownCode", { fg = c.md_orange, bg = "NONE", underline = true })
	hl(0, "markdownCodeBlock", { fg = c.gray03, bg = "NONE" })
	hl(0, "markdownCodeDelimiter", { fg = c.fg, bg = "NONE" })
	hl(0, "markdownH1", { fg = c.md_blue, bg = "NONE", bold = true })
	hl(0, "markdownH2", { fg = c.md_blue, bg = "NONE", bold = true })
	hl(0, "markdownH3", { fg = c.md_blue, bg = "NONE", bold = true })
	hl(0, "markdownH4", { fg = c.md_blue, bg = "NONE", bold = true })
	hl(0, "markdownH5", { fg = c.md_blue, bg = "NONE", bold = true })
	hl(0, "markdownH6", { fg = c.md_blue, bg = "NONE", bold = true })
	hl(0, "markdownListMarker", { fg = c.md_blue, bg = "NONE" })
	hl(0, "markdownOrderedListMarker", { fg = c.md_blue, bg = "NONE" })
	hl(0, "markdownUrl", { fg = c.fg, bg = "NONE" })
	hl(0, "markdownLinkText", { fg = c.md_orange, bg = "NONE" })
	hl(0, "markdownHeadingDelimiter", { fg = c.md_blue, bg = "NONE" })
	hl(0, "markdownId", { link = "Identifier" })
	hl(0, "markdownItalic", { link = "Italic" })
	hl(0, "markdownBoldItalic", { fg = c.yellow, bg = "NONE", bold = true, italic = true })
	hl(0, "markdownBold", { fg = "NONE", bg = "NONE", bold = true })
end

return markdown
