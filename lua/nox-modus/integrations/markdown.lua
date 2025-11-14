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
    markdownCode = { fg = c.ash_grey },
    markdownCodeBlock = { fg = c.grey_chateau },
    RenderMarkdownCode = { bg = c.zeus },
    markdownCodeDelimiter = { fg = c.ash_grey },
    markdownBlockquote = { fg = c.dawn, italic = true },
    markdownH1 = { fg = c.celestial_blue, bold = true },
    markdownH2 = { fg = c.celestial_blue, bold = true },
    markdownH3 = { fg = c.celestial_blue, bold = true },
    markdownH4 = { fg = c.celestial_blue, bold = true },
    markdownH5 = { fg = c.celestial_blue, bold = true },
    markdownH6 = { fg = c.celestial_blue, bold = true },
    markdownUrl = { fg = c.celestial_blue, underline = true },
    markdownLinkText = { fg = c.celestial_blue, underline = true },
    RenderMarkdownH1Bg = { bg = c.zeus },
    RenderMarkdownH2Bg = { bg = c.zeus },
    RenderMarkdownH3Bg = { bg = c.zeus },
    markdownListMarker = { fg = c.celestial_blue },
    markdownOrderedListMarker = { fg = c.celestial_blue },
    markdownHeadingDelimiter = { fg = c.celestial_blue },
    markdownId = { link = "Identifier" },
    markdownItalic = { link = "Italic" },
    markdownBoldItalic = { fg = c.sunglow, bold = true, italic = true },
    markdownBold = { bold = true },
    RenderMarkdownQuote = { fg = c.dawn, italic = true },
    RenderMarkdownCodeInline = { fg = c.aluminium, bg = c.zeus },
    RenderMarkdownInlineHighlight = { fg = c.bg, bg = c.monsoon },
  }
end

return M
