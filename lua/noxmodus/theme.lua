
local c = require('noxmodus.palette')

local hl = vim.api.nvim_set_hl
local theme = {}

theme.set_highlights = function()

  -- editor
  hl(0, "Normal", { fg = c.fg, bg = c.bg })
  hl(0, "NormalNC", { fg = c.gray03, bg = c.bg })
  hl(0, "Cursor", { fg = c.cursor_fg, bg = c.cursor_bg })
  hl(0, "Underlined", { fg = 'NONE', bg = 'NONE', underline=true, })
  hl(0, "SpecialKey", { fg = c.fg, bg = 'NONE', bold=true, })
  hl(0, "NonText", { fg = c.gray02, bg = 'NONE' })
  hl(0, "Insert", { fg = c.red, bg = c.orange })
  hl(0, "MsgArea", { fg = c.fg, bg = c.bg })
  hl(0, "VertSplit", { fg = c.gray01, bg = 'NONE' })
  hl(0, "LineNr", { fg = c.gray01, bg = 'NONE' })
  hl(0, "CursorLineNr", { fg = c.yellow, bg = c.bg })
  hl(0, "CursorLine", { fg = 'NONE', bg = c.gray01 })
  hl(0, "SignColumn", { fg = 'NONE', bg = c.bg })
  hl(0, "ColorColumn", { fg = 'NONE', bg = c.gray06 })
  hl(0, "CursorColumn", { fg = 'NONE', bg = c.gray01 })
  hl(0, "SpellBad", { fg = 'NONE', bg = 'NONE', sp = c.red, undercurl=true, })
  hl(0, "SpellCap", { fg = 'NONE', bg = 'NONE', sp = c.yellow, undercurl=true, })
  hl(0, "SpellLocal", { fg = 'NONE', bg = 'NONE', sp = c.green, underline=true, })
  hl(0, "SpellRare", { fg = 'NONE', bg = 'NONE', sp = c.purple, underline=true, })
  hl(0, "ErrorMsg", { fg = c.red, bg = c.bg, bold=true, })
  hl(0, "WarningMsg", { fg = c.orange, bg = c.bg })
  hl(0, "ModeMsg", { fg = c.fg, bg = c.bg })
  hl(0, "MoreMsg", { fg = c.yellow, bg = 'NONE' })
  hl(0, "Error", { fg = c.red, bg = 'NONE', bold=true, })
  hl(0, "Visual", { fg = c.gray01, bg = c.gray03 })
  hl(0, "VisualNOS", { fg = 'NONE', bg = c.red })
  hl(0, "Search", { fg = c.bg, bg = c.fg })
  hl(0, "IncSearch", { fg = c.bg, bg = c.fg })
  hl(0, "Pmenu", { fg = c.fg, bg = c.gray01 })
  hl(0, "PmenuSel", { fg = c.fg, bg = c.gray02 })
  hl(0, "PmenuSbar", { fg = c.fg, bg = c.gray01 })
  hl(0, "PmenuThumb", { fg = c.fg, bg = c.gray03 })
  hl(0, "DiffText", { fg = c.fg, bg = c.DiffText })
  hl(0, "DiffAdd", { fg = c.fg, bg = c.DiffAdd })
  hl(0, "DiffChange", { fg = c.fg, bg = c.DiffChange })
  hl(0, "DiffDelete", { fg = c.fg, bg = c.DiffDelete })
  hl(0, "WildMenu", { fg = c.fg, bg = c.bg })
  hl(0, "Folded", { fg = c.gray02, bg = 'NONE' })
  hl(0, "FoldColumn", { fg = c.gray06, bg = 'NONE' })
  hl(0, "Whitespace", { fg = c.fg, bg = 'NONE' })
  hl(0, "NormalFloat", { fg = 'NONE', bg = 'NONE' })
  hl(0, "FloatBoder", { fg = c.gray03, bg = c.bg })
  hl(0, "QuickFixLine", { fg = 'NONE', bg = c.yellow })
  hl(0, "MatchWord", { fg = 'NONE', bg = 'NONE', underline=true, })
  hl(0, "MatchParen", { fg = c.orange, bg = 'NONE' })
  hl(0, "MatchWordCur", { fg = 'NONE', bg = 'NONE', underline=true, })
  hl(0, "MatchParenCur", { fg = 'NONE', bg = 'NONE', underline=true, })
  hl(0, "lCursor", { fg = c.cursor_fg, bg = c.cursor_bg })
  hl(0, "CursorIM", { fg = c.cursor_fg, bg = c.cursor_bg })
  hl(0, "TermCursor", { fg = c.cursor_fg, bg = c.cursor_bg })
  hl(0, "TermCursorNC", { fg = c.cursor_fg, bg = c.cursor_bg })
  hl(0, "Conceal", { fg = c.fg, bg = 'NONE' })
  hl(0, "Directory", { fg = c.grayish_blue, bg = 'NONE' })
  hl(0, "Substitute", { fg = c.bg, bg = c.gray03 })
  hl(0, "Question", { fg = c.yellow, bg = 'NONE' })
  hl(0, "EndOfBuffer", { fg = c.bg, bg = 'NONE' })
  hl(0, "TabLine", { fg = c.gray06, bg = c.bg })
  hl(0, "TabLineSel", { fg = c.fg, bg = c.bg })
  hl(0, "TabLineFill", { fg = c.bg, bg = c.bg })

  -- Code
  hl(0, "Comment", { fg = c.gray02, bg = 'NONE', italic=true, })
  hl(0, "Title", { fg = c.gray05, bg = 'NONE', bold=true, })
  hl(0, "String", { fg = c.light_blue, bg = 'NONE' })
  hl(0, "Character", { fg = c.gray03, bg = 'NONE' })
  hl(0, "Number", { fg = c.gray04, bg = 'NONE' })
  hl(0, "Float", { fg = c.gray04, bg = 'NONE' })
  hl(0, "Boolean", { fg = c.grayish_blue, bg = 'NONE' })
  hl(0, "Constant", { fg = c.light_blue, bg = 'NONE' })
  hl(0, "Type", { fg = c.grayish_blue, bg = 'NONE' })
  hl(0, "StorageClass", { fg = c.fg, bg = 'NONE' })
  hl(0, "Structure", { fg = c.fg, bg = 'NONE' })
  hl(0, "Typedef", { fg = c.fg, bg = 'NONE' })
  hl(0, "PreProc", { fg = c.grayish_blue, bg = 'NONE' })
  hl(0, "Include", { fg = c.grayish_blue, bg = 'NONE' })
  hl(0, "Define", { fg = c.gray05, bg = 'NONE' })
  hl(0, "Macro", { fg = c.gray05, bg = 'NONE' })
  hl(0, "PreCondit", { fg = c.gray05, bg = 'NONE' })
  hl(0, "Statement", { fg = c.grayish_blue, bg = 'NONE' })
  hl(0, "Conditional", { fg = c.grayish_blue, bg = 'NONE' })
  hl(0, "Repeat", { fg = c.grayish_blue, bg = 'NONE' })
  hl(0, "Label", { fg = c.gray03, bg = 'NONE' })
  hl(0, "Operator", { fg = c.gray03, bg = 'NONE' })
  hl(0, "Keyword", { fg = c.grayish_blue, bg = 'NONE' })
  hl(0, "Variable", { fg = c.fg, bg = 'NONE' })
  hl(0, "Exception", { fg = c.gray03, bg = 'NONE' })
  hl(0, "Identifier", { fg = c.fg, bg = 'NONE' })
  hl(0, "Function", { fg = c.light_blue, bg = 'NONE' })
  hl(0, "Special", { fg = c.grayish_blue, bg = 'NONE' })
  hl(0, "SpecialChar", { fg = c.fg, bg = 'NONE' })
  hl(0, "Tag", { fg = c.gray03, bg = 'NONE' })
  hl(0, "Delimiter", { fg = c.gray03, bg = 'NONE' })
  hl(0, "Debug", { fg = c.red, bg = 'NONE' })
  hl(0, "Bold", { fg = 'NONE', bg = 'NONE', bold=true, })
  hl(0, "Italic", { fg = 'NONE', bg = 'NONE', italic=true, })
  hl(0, "Ignore", { fg = c.red, bg = 'NONE', bold=true, })
  hl(0, "Todo", { fg = c.yellow, bg = 'NONE', bold=true, })

  -- StatusLine
  hl(0, "StatusLine", { fg = c.gray03, bg = c.gray01 })
  hl(0, "StatusLineNC", { fg = c.gray02, bg = c.gray01 })
  hl(0, "StatusLineSeparator", { fg = c.gray03, bg = 'NONE' })
  hl(0, "StatusLineTerm", { fg = c.gray03, bg = 'NONE' })
  hl(0, "StatusLineTermNC", { fg = c.gray03, bg = 'NONE' })

  -- Git
  hl(0, "SignAdd", { fg = c.green, bg = 'NONE' })
  hl(0, "SignChange", { fg = c.orange, bg = 'NONE' })
  hl(0, "SignDelete", { fg = c.red, bg = 'NONE' })
  hl(0, "GitSignsAdd", { fg = c.green, bg = 'NONE' })
  hl(0, "GitSignsChange", { fg = c.orange, bg = 'NONE' })
  hl(0, "GitSignsDelete", { fg = c.red, bg = 'NONE' })
  hl(0, "gitCommitSummary", { fg = c.fg, bg = c.bg, italic=true, })
  hl(0, "gitCommitSelectedFile", { fg = c.light_blue, bg = c.bg, italic=true, })

  -- Packer
  hl(0, "packerString", { fg = c.orange, bg = 'NONE' })
  hl(0, "packerHash", { fg = c.blue, bg = 'NONE' })
  hl(0, "packerOutput", { fg = c.purple, bg = 'NONE' })
  hl(0, "packerRelDate", { fg = c.gray03, bg = 'NONE' })
  hl(0, "packerSuccess", { fg = c.green, bg = 'NONE' })
  hl(0, "packerStatusSuccess", { fg = c.blue, bg = 'NONE' })

  -- Nvim-Cmp
  hl(0, "CmpPmenuSel", { fg = 'NONE', bg = c.gray01 })
  hl(0, "CmpItemAbbrDeprecated", { fg = c.gray03, bg = 'NONE', strikethrough=true, })
  hl(0, "CmpItemAbbrMatch", { fg = c.fg, bg = 'NONE' })
  hl(0, "CmpItemAbbrMatchFuzzy", { fg = c.fg, bg = 'NONE' })

  -- NvimTree
  hl(0, "NvimTreeGitNew", { fg = c.green, bg = 'NONE' })
  hl(0, "NvimTreeGitRenamed", { fg = c.green, bg = 'NONE' })
  hl(0, "NvimTreeGitDeleted", { fg = c.red, bg = 'NONE' })
  hl(0, "NvimTreeGitMerge", { fg = c.orange, bg = 'NONE' })
  hl(0, "NvimTreeGitStaged", { fg = c.green, bg = 'NONE' })
  hl(0, "NvimTreeGitDirty", { fg = c.yellow, bg = 'NONE' })
  hl(0, "NvimTreeSymlink", { fg = c.blue, bg = 'NONE' })
  hl(0, "NvimTreeFolderIcon", { link = 'Directory' })
  hl(0, "NvimTreeOpenedFolderName", { fg = 'NONE', bg = 'NONE', italic=true, })
  hl(0, "NvimTreeGitIgnored", { fg = 'NONE', bg = 'NONE', italic=true, })
  hl(0, "NvimTreeEmptyFolderName", { fg = 'NONE', bg = 'NONE', italic=true, })
  hl(0, "NvimTreeRootFolder", { fg = c.blue, bg = 'NONE', italic=true, })

  -- Telescope
  hl(0, "TelescopeSelection", { fg = 'NONE', bg = c.gray01 })
  hl(0, "TelescopeSelectionCaret", { fg = c.grayish_blue, bg = 'NONE' })
  hl(0, "TelescopeBorder", { fg = c.gray05, bg = 'NONE' })
  hl(0, "TelescopePromptfix", { fg = c.red, bg = 'NONE' })
  hl(0, "TelescopePromptBorder", { fg = c.grayish_blue, bg = 'NONE' })
  hl(0, "TelescopeResultsBorder", { fg = c.gray05, bg = 'NONE' })
  hl(0, "TelescopePreviewBorder", { fg = c.gray05, bg = 'NONE' })
  hl(0, "TelescopeMatching", { fg = c.yellow, bg = 'NONE' })
  hl(0, "TelescopePromptPrefix", { fg = c.grayish_blue, bg = 'NONE' })
  hl(0, "TelescopePromptTitle", { fg = c.grayish_blue, bg = 'NONE' })

  -- Navic
  hl(0, "NavicIconsFile", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsModule", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsNamespace", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsPackage", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsClass", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsMethod", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsProperty", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsField", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsConstructor", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsEnum", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsInterface", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsFunction", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsVariable", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsConstant", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsString", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsNumber", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsBoolean", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsArray", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsObject", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsKey", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsKeyword", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsNull", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsEnumMember", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsStruct", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsEvent", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsOperator", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicIconsTypeParameter", { fg = c.fg, bg = 'NONE' })
  hl(0, "NavicText", { fg = c.gray05, bg = 'NONE' })
  hl(0, "NavicSeparator", { fg = c.gray04, bg = 'NONE' })

  -- Null-ls
  hl(0, "NullLsInfoBorder", { fg = c.gray03, bg = 'NONE' })

  -- Markdown
  hl(0, "markdownBlockquote", { fg = c.md_orange, bg = 'NONE' })
  hl(0, "markdownCode", { fg = c.md_orange, bg = 'NONE', underline=true, })
  hl(0, "markdownCodeBlock", { fg = c.gray03, bg = 'NONE' })
  hl(0, "markdownCodeDelimiter", { fg = c.fg, bg = 'NONE' })
  hl(0, "markdownH1", { fg = c.md_blue, bg = 'NONE', bold=true, })
  hl(0, "markdownH2", { fg = c.md_blue, bg = 'NONE', bold=true, })
  hl(0, "markdownH3", { fg = c.md_blue, bg = 'NONE', bold=true, })
  hl(0, "markdownH4", { fg = c.md_blue, bg = 'NONE', bold=true, })
  hl(0, "markdownH5", { fg = c.md_blue, bg = 'NONE', bold=true, })
  hl(0, "markdownH6", { fg = c.md_blue, bg = 'NONE', bold=true, })
  hl(0, "markdownListMarker", { fg = c.md_blue, bg = 'NONE' })
  hl(0, "markdownOrderedListMarker", { fg = c.md_blue, bg = 'NONE' })
  hl(0, "markdownUrl", { fg = c.fg, bg = 'NONE' })
  hl(0, "markdownLinkText", { fg = c.md_orange, bg = 'NONE' })
  hl(0, "markdownHeadingDelimiter", { fg = c.md_blue, bg = 'NONE' })
  hl(0, "markdownId", { link = 'Identifier' })
  hl(0, "markdownItalic", { link = 'Italic' })
  hl(0, "markdownBoldItalic", { fg = c.yellow, bg = 'NONE', bold=true, italic=true, })
  hl(0, "markdownBold", { fg = 'NONE', bg = 'NONE', bold=true, })

  -- Treesitter
  hl(0, "@comment", { link = 'Comment' })
  hl(0, "@variable", { link = 'Identifier' })
  hl(0, "@variable.builtin", { fg = c.grayish_blue, bg = 'NONE' })
  hl(0, "@string", { link = 'String' })
  hl(0, "@string.documentation", { link = 'String' })
  hl(0, "@string.regex", { link = 'Constant' })
  hl(0, "@string.escape", { link = 'Constant' })
  hl(0, "@string.special", { link = 'Contstant' })
  hl(0, "@function", { link = 'Function' })
  hl(0, "@function.builtin", { link = 'Function' })
  hl(0, "@function.macro", { link = 'macro' })
  hl(0, "@method", { link = 'Function' })
  hl(0, "@constructor", { link = 'Function' })
  hl(0, "@parameter", { link = 'Identifier' })

  -- LSP
  hl(0, "DiagnosticError", { fg = c.red, bg = 'NONE' })
  hl(0, "DiagnosticSignError", { link = 'DiagnosticError' })
  hl(0, "DiagnosticUnderlineError", { fg = 'NONE', bg = 'NONE', sp = c.red, undercurl=true, })
  hl(0, "DiagnosticWarn", { fg = c.yellow, bg = 'NONE' })
  hl(0, "DiagnosticSignWarn", { link = 'DiagnosticWarn' })
  hl(0, "DiagnosticUnderlineWarn", { fg = 'NONE', bg = 'NONE', sp = c.yellow, undercurl=true, })
  hl(0, "DiagnosticHint", { fg = c.purple, bg = 'NONE' })
  hl(0, "DiagnosticSignHint", { link = 'DiagnosticHint' })
  hl(0, "DiagnosticUnderlineHint", { fg = 'NONE', bg = 'NONE', sp = c.purple, undercurl=true, })
end

return theme