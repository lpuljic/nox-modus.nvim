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
    --- Treesitter
    --- |:help treesitter-highlight-groups|

    -- Identifiers
    ["@variable"] = { link = "Variable" },
    ["@variable.member"] = { link = "@variable" },
    ["@variable.builtin"] = { fg = c.grey_chateau },

    -- Literals
    ["@string"] = { link = "String" },
    ["@string.documentation"] = { link = "String" },
    ["@string.regex"] = { link = "Constant" },
    ["@string.escape"] = { link = "Constant" },
    ["@string.special"] = { link = "Constant" },
    --		["@string.yaml"] = { fg = c.base }, -- Not sure why I did this, this will change yaml value colour. e.g    targetRevision: main (main is string colour)

    -- Types
    ["@property"] = { link = "Property" },
    ["@type.builtin"] = { fg = c.grey_chateau, bold = true },

    -- Functions
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { link = "Function" },
    ["@function.method.call"] = { fg = c.cascade, italic = true },
    ["@function.macro"] = { link = "Macro" },
    ["@constructor"] = { link = "Function" },
    ["@method"] = { link = "Function" },
    ["@parameter"] = { link = "Identifier" },

    -- Comment
    ["@comment"] = { link = "Comment" },
    ["@comment.error"] = { fg = c.red },
    ["@comment.warning"] = { fg = c.sunglow },
    ["@comment.todo"] = { fg = c.purple },
    ["@comment.hint"] = { fg = c.celestial_blue },
    ["@comment.note"] = { fg = c.celestial_blue },

    -- Markup
    ["@nospell.markdown_inline"] = { fg = c.base },
    ["@markup.quote"] = { link = "RenderMarkdownQuote" },
    ["@markup.raw.markdown_inline"] = { fg = c.grey_chateau },
    ["@markup.link.markdown_inline"] = { fg = c.grey_chateau },
    ["@markup.link.label.markdown_inline"] = { fg = c.grey_chateau },
    ["@markup.raw.block.markdown"] = { fg = c.grey_chateau },
    ["@markup.heading.1.markdown"] = { link = "markdownH1" },
    ["@markup.heading.2.markdown"] = { link = "markdownH2" },
    ["@markup.heading.3.markdown"] = { link = "markdownH3" },
    ["@_label.markdown_inline"] = { link = "Label" },
    ["@markup.strikethrough"] = { fg = c.dawn, strikethrough = true },
  }
end

return M
