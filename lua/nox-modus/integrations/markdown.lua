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
    RenderMarkdownCode = { bg = c.dark },
    markdownCodeDelimiter = { fg = c.base },
    markdownBlockquote = { fg = c.mocha },
    markdownH1 = { fg = c.base, bold = true },
    markdownH2 = { fg = c.base, bold = true },
    markdownH3 = { fg = c.base, bold = true },
    markdownH4 = { fg = c.base, bold = true },
    markdownH5 = { fg = c.base, bold = true },
    markdownH6 = { fg = c.base, bold = true },
    markdownUrl = { fg = c.base },
    markdownLinkText = { fg = c.mocha, underline = true },
    RenderMarkdownH1Bg = { bg = c.gun_powder },
    RenderMarkdownH2Bg = { bg = c.gravel },
    RenderMarkdownH3Bg = { bg = c.storm_dust },
    markdownListMarker = { fg = c.celestial_blue },
    markdownOrderedListMarker = { fg = c.celestial_blue },
    markdownHeadingDelimiter = { fg = c.celestial_blue },
    markdownId = { link = "Identifier" },
    markdownItalic = { link = "Italic" },
    markdownBoldItalic = { fg = c.sunglow, bold = true, italic = true },
    markdownBold = { bold = true },
    RenderMarkdownQuote = { fg = c.dawn, italic = true },
    RenderMarkdownCodeInline = { fg = c.sunglow, bg = c.zeus },
    RenderMarkdownInlineHighlight = { fg = c.bg, bg = c.monsoon },
  }
end

return M
