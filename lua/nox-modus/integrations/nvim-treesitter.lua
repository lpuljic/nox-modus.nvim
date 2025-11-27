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
    ["@variable.builtin"] = { fg = c.grey_chateau },

    -- Literals
    ["@string"] = { link = "String" },
    ["@string.documentation"] = { link = "String" },
    ["@string.regex"] = { link = "Constant" },
    ["@string.escape"] = { link = "Constant" },
    ["@string.special"] = { link = "Constant" },

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
    ["@markup"] = { fg = c.base }, -- text clour for markup languages
    ["@markup.heading"] = { link = "Keyword" },
    ["@markup.italic"] = { fg = c.base, italic = true },
    ["@markup.link"] = { fg = c.string },
    ["@markup.link.uri"] = { fg = c.string, underline = true },
    ["@markup.raw"] = { link = "Constant"},
    ["@markup.quote.markdown"] = { link = "Comment" },
    ["@markup.math"] = { link = "String" },
    ["@markup.strong"] = { fg = c.base, bold = true },
    ["@markup.strikethrough"] = { fg = c.warm_grey, strikethrough = true },
    ["@markup.underline"] = { fg = c.base, underline = true },
    ["@markup.list"] = { link = "Function" },
  }
end
return M
