local c = require("nox-modus.palette")

local hl = vim.api.nvim_set_hl
local theme = {}

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

theme.set_highlights = function()
	-- editor
	hl(0, "Normal", { fg = c.base, bg = c.bg }) -- normal text
	hl(0, "NormalNC", { fg = c.base, bg = c.bg }) -- normal text in non-current windows
	hl(0, "Cursor", { fg = c.gun_powder, bg = c.Aluminium }) -- character under the cursor
	hl(0, "Underlined", { underline = true }) -- (preferred) text that stands out, HTML links
	hl(0, "SpecialKey", { fg = c.base, bold = true }) -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
	hl(0, "NonText", { fg = c.storm_dust }) -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
	hl(0, "Insert", { fg = c.red, bg = c.orange })
	hl(0, "MsgArea", { fg = c.base, bg = c.bg }) -- Area for messages and cmdline
	hl(0, "VertSplit", { fg = c.gravel }) -- the column separating vertically split windows
	hl(0, "WinSeparator", { fg = c.gravel }) -- Colour vertically split line (See :h 'fillchars'.)
	hl(0, "LineNr", { fg = c.gravel }) -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
	hl(0, "CursorLineNr", { fg = c.sunglow, bg = c.bg }) -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
	hl(0, "CursorLine", { bg = c.zeus }) -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
	hl(0, "SignColumn", { bg = c.bg }) -- column where |signs| are displayed
	hl(0, "ColorColumn", { bg = c.zeus }) -- used for the columns set with 'colorcolumn'
	hl(0, "CursorColumn", { bg = c.gravel }) -- Screen-column at the cursor, when 'cursorcolumn' is set.
	hl(0, "SpellBad", { sp = c.red, undercurl = true }) -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
	hl(0, "SpellCap", { sp = c.sunglow, undercurl = true }) -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
	hl(0, "SpellLocal", { sp = c.celestial_blue, undercurl = true }) -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
	hl(0, "SpellRare", { sp = c.celestial_blue, undercurl = true }) -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
	hl(0, "ErrorMsg", { fg = c.red, bg = c.bg, bold = true }) -- error messages on the command line
	hl(0, "WarningMsg", { fg = c.orange, bg = c.bg }) -- warning messages
	hl(0, "ModeMsg", { fg = c.base, bg = c.bg })
	hl(0, "MoreMsg", { fg = c.celestial_blue }) -- |more-prompt|
	hl(0, "Error", { fg = c.red, bold = true }) -- (preferred) any erroneous construct
	hl(0, "Visual", { fg = c.gravel, bg = c.ash_grey }) -- Visual mode selection
	hl(0, "VisualNOS", { bg = c.red }) -- Visual mode selection when vim is "Not Owning the Selection".
	hl(0, "Search", { fg = c.bg, bg = c.base }) -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
	hl(0, "IncSearch", { fg = c.bg, bg = c.base }) -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
	hl(0, "Pmenu", { fg = c.base, bg = c.gravel }) -- Popup menu: normal item.
	hl(0, "PmenuSel", { fg = c.base, bg = c.storm_dust }) -- Popup menu: selected item.
	hl(0, "PmenuSbar", { fg = c.base, bg = c.gravel }) -- Popup menu: scrollbar.
	hl(0, "PmenuThumb", { fg = c.base, bg = c.ash_grey }) -- Popup menu: Thumb of the scrollbar.
	hl(0, "DiffText", { fg = c.base, bg = c.git.DiffText }) -- diff mode: Changed text within a changed line |diff.txt|
	hl(0, "DiffAdd", { fg = c.base, bg = c.git.DiffAdd }) -- diff mode: Added line |diff.txt|
	hl(0, "DiffChange", { fg = c.base, bg = c.git.DiffChange }) -- diff mode: Changed line |diff.txt|
	hl(0, "DiffDelete", { fg = c.base, bg = c.git.DiffDelete }) -- diff mode: Deleted line |diff.txt|
	hl(0, "WildMenu", { fg = c.base, bg = c.bg }) -- current match in 'wildmenu' completion
	hl(0, "Folded", { fg = c.storm_dust }) -- line used for closed folds
	hl(0, "FoldColumn", { fg = c.dawn }) -- 'foldcolumn'
	hl(0, "Whitespace", { fg = c.base }) -- "nbsp", "space", "tab" and "trail" in 'listchars'
	hl(0, "NormalFloat", { fg = "NONE" }) -- Normal text in floating windows.
	hl(0, "FloatBorder", { fg = c.ash_grey, bg = c.bg })
	hl(0, "QuickFixLine", { bg = c.gravel }) -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
	hl(0, "qfFileName", { fg = c.base })
	hl(0, "qfLineNr", { fg = c.sunglow })
	hl(0, "MatchParen", { fg = c.orange }) -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
	hl(0, "lCursor", { fg = c.gun_powder, bg = c.Aluminium }) -- the character under the cursor when |language-mapping| is used (see 'guicursor')
	hl(0, "CursorIM", { fg = c.gun_powder, bg = c.Aluminium }) -- like Cursor, but used when in IME mode |CursorIM|
	hl(0, "TermCursor", { fg = c.gun_powder, bg = c.Aluminium }) -- cursor in a focused terminal
	hl(0, "TermCursorNC", { fg = c.gun_powder, bg = c.Aluminium }) -- cursor in an unfocused terminal
	hl(0, "Conceal", { fg = c.base }) -- placeholder characters substituted for concealed text (see 'conceallevel')
	hl(0, "Directory", { fg = c.dawn }) -- directory names (and other special names in listings)
	hl(0, "Substitute", { fg = c.bg, bg = c.ash_grey }) -- |:substitute| replacement text highlighting
	hl(0, "Question", { fg = c.sunglow }) -- |hit-enter| prompt and yes/no questions
	hl(0, "EndOfBuffer", { fg = c.bg }) -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
	hl(0, "TabLine", { fg = c.dawn, bg = c.bg }) -- tab pages line, not active tab page label
	hl(0, "TabLineSel", { fg = c.base, bg = c.bg }) -- tab pages line, active tab page label
	hl(0, "TabLineFill", { fg = c.bg, bg = c.bg }) -- tab pages line, where there are no labels

	-- Code
	hl(0, "Comment", { fg = c.storm_dust, italic = true }) -- any comment
2	hl(0, "Title", { fg = c.warm_grey, bold = true }) -- titles for output from ":set all", ":autocmd" etc.
	hl(0, "String", { fg = c.cascade }) --   a string constant: "this is a string"
	hl(0, "Character", { fg = c.ash_grey }) --  a character constant: 'c', '\n'
	hl(0, "Number", { fg = c.dawn }) --   a number constant: 234, 0xff
	hl(0, "Float", { link = "Number" }) --    a floating point constant: 2.3e10
	hl(0, "Boolean", { fg = c.grey_chateau }) --  a boolean constant: TRUE, false
	hl(0, "Constant", { fg = c.cascade }) -- (preferred) any constant
	hl(0, "Type", { fg = c.grey_chateau }) -- (preferred) int, long, char, etc.
	hl(0, "StorageClass", { fg = c.base }) -- static, register, volatile, etc.
	hl(0, "Structure", { fg = c.base }) --  struct, union, enum, etc.
	hl(0, "Typedef", { fg = c.base }) --  A typedef
	hl(0, "PreProc", { fg = c.grey_chateau }) -- (preferred) generic Preprocessor
	hl(0, "Include", { fg = c.grey_chateau }) --  preprocessor #include
	hl(0, "Define", { fg = c.warm_grey }) --   preprocessor #define
	hl(0, "Macro", { fg = c.warm_grey }) --    same as Define
	hl(0, "PreCondit", { fg = c.warm_grey }) --  preprocessor #if, #else, #endif, etc.
	hl(0, "Statement", { fg = c.grey_chateau }) -- (preferred) any statement
	hl(0, "Conditional", { fg = c.grey_chateau }) --  if, then, else, endif, switch, etc.
	hl(0, "Repeat", { fg = c.grey_chateau }) --   for, do, while, etc.
	hl(0, "Label", { fg = c.ash_grey }) --    case, default, etc.
	hl(0, "Operator", { fg = c.ash_grey }) -- "sizeof", "+", "*", etc.
	hl(0, "Keyword", { fg = c.grey_chateau }) --  any other keyword
	hl(0, "Variable", { fg = c.base }) -- Any variable name that does not have another highlight.
	hl(0, "Exception", { fg = c.ash_grey }) --  try, catch, throw
	hl(0, "Identifier", { fg = c.base }) -- (preferred) any variable name
	hl(0, "Function", { fg = c.cascade }) -- function name (also: methods for classes)
	hl(0, "Special", { fg = c.grey_chateau }) -- (preferred) any special symbol
	hl(0, "SpecialChar", { fg = c.base }) --  special character in a constant
	hl(0, "Tag", { fg = c.ash_grey }) --    you can use CTRL-] on this
	hl(0, "Delimiter", { fg = c.ash_grey }) --  character that needs attention
	hl(0, "Debug", { fg = c.red }) --    debugging statements
	hl(0, "Bold", { bold = true })
	hl(0, "Italic", { italic = true })
	hl(0, "Todo", { fg = c.bg, bg = c.sunglow, bold = true }) -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
	hl(0, "Ignore", { fg = c.red, bold = true }) -- (preferred) left blank, hidden  |hl-Ignore|

	-- StatusLine
	hl(0, "StatusLine", { fg = c.ash_grey, bg = c.gravel }) -- status line of current window
	hl(0, "StatusLineNC", { fg = c.storm_dust, bg = c.gravel }) -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
	hl(0, "StatusLineSeparator", { fg = c.ash_grey })
	hl(0, "StatusLineTerm", { fg = c.ash_grey })
	hl(0, "StatusLineTermNC", { fg = c.ash_grey })

	-- lewis6991/gitsigns.nvim
	hl(0, "SignAdd", { fg = c.olivine })
	hl(0, "SignChange", { fg = c.orange })
	hl(0, "SignDelete", { fg = c.red })
	hl(0, "GitSignsAdd", { fg = c.olivine }) -- diff mode: Added line |diff.txt|
	hl(0, "GitSignsChange", { fg = c.orange }) -- diff mode: Changed line |diff.txt|
	hl(0, "GitSignsDelete", { fg = c.red }) -- diff mode: Deleted line |diff.txt|
	hl(0, "gitCommitSummary", { fg = c.base, bg = c.bg, italic = true })
	hl(0, "gitCommitSelectedFile", { fg = c.cascade, bg = c.bg, italic = true })

	-- hrsh7th/nvim-cmp
	hl(0, "CmpPmenuSel", { fg = c.base, bg = c.gravel })
	hl(0, "CmpItemAbbrDeprecated", { fg = c.ash_grey, strikethrough = true })
	hl(0, "CmpItemAbbrMatch", { fg = c.base })
	hl(0, "CmpItemAbbrMatchFuzzy", { fg = c.base })
	hl(0, "CmpItemKind", { fg = c.grey_chateau })

	-- kyazdani42/nvim-tree.lua
	hl(0, "NvimTreeRootFolder", { fg = c.monsoon, italic = true, bold = true })
	hl(0, "NvimTreeFolderIcon", { fg = c.grey_chateau })
	hl(0, "NvimTreeGitNew", { fg = c.olivine })
	hl(0, "NvimTreeOpenedFile", { italic = true })
	hl(0, "NvimTreeOpenedFolderName", { italic = true })
	hl(0, "NvimTreeGitRenamed", { fg = c.olivine })
	hl(0, "NvimTreeEmptyFolderName", { italic = true })
	hl(0, "NvimTreeGitDeleted", { fg = c.red })
	hl(0, "NvimTreeGitMerge", { fg = c.orange })
	hl(0, "NvimTreeGitStaged", { fg = c.olivine })
	hl(0, "NvimTreeGitDirty", { fg = c.sunglow })
	hl(0, "NvimTreeSymlink", { fg = c.monsoon })
	hl(0, "NvimTreeGitIgnored", { italic = true })
	hl(0, "NvimTreeExecFile", { fg = c.grey_chateau, italic = true })

	-- nvim-telescope/telescope.nvim
	hl(0, "TelescopePromptNormal", { bg = c.zeus })
	hl(0, "TelescopeSelection", { bg = c.gravel })
	hl(0, "TelescopeSelectionCaret", { fg = c.grey_chateau })
	hl(0, "TelescopeBorder", { fg = c.warm_grey })
	hl(0, "TelescopePromptfix", { fg = c.red })
	hl(0, "TelescopePromptBorder", { fg = c.grey_chateau })
	hl(0, "TelescopeResultsBorder", { fg = c.warm_grey })
	hl(0, "TelescopePreviewBorder", { fg = c.warm_grey })
	hl(0, "TelescopeMatching", { fg = c.sunglow, italic = true, bold = true })
	hl(0, "TelescopePromptPrefix", { fg = c.grey_chateau })
	hl(0, "TelescopePromptTitle", { fg = c.grey_chateau })

	-- Null-ls
	hl(0, "NullLsInfoBorder", { fg = c.ash_grey })

	-- Markdown
	hl(0, "markdownCode", { fg = c.mocha })
	hl(0, "markdownCodeBlock", { fg = c.gravel })
	hl(0, "markdownCodeDelimiter", { fg = c.base })
	hl(0, "markdownBlockquote", { fg = c.mocha })
	hl(0, "markdownH1", { fg = c.celestial_blue, bold = true })
	hl(0, "markdownH2", { fg = c.celestial_blue, bold = true })
	hl(0, "markdownH3", { fg = c.celestial_blue, bold = true })
	hl(0, "markdownH4", { fg = c.celestial_blue, bold = true })
	hl(0, "markdownH5", { fg = c.celestial_blue, bold = true })
	hl(0, "markdownH6", { fg = c.celestial_blue, bold = true })
	hl(0, "markdownListMarker", { fg = c.celestial_blue })
	hl(0, "markdownOrderedListMarker", { fg = c.celestial_blue })
	hl(0, "markdownUrl", { fg = c.base })
	hl(0, "markdownLinkText", { fg = c.mocha, underline = true })
	hl(0, "markdownHeadingDelimiter", { fg = c.celestial_blue })
	hl(0, "markdownId", { link = "Identifier" })
	hl(0, "markdownItalic", { link = "Italic" })
	hl(0, "markdownBoldItalic", { fg = c.sunglow, bold = true, italic = true })
	hl(0, "markdownBold", { bold = true })
	hl(0, "RenderMarkdownCode", { bg = c.zeus })

	-- Treesitter
	hl(0, "@comment", { link = "Comment" })
	hl(0, "@comment.error", { fg = c.red })
	hl(0, "@comment.warning", { fg = c.sunglow })
	hl(0, "@comment.todo", { fg = c.purple })
	hl(0, "@comment.hint", { fg = c.celestial_blue })
	hl(0, "@comment.note", { fg = c.celestial_blue })
	hl(0, "@variable", { link = "Identifier" })
	hl(0, "@variable.builtin", { fg = c.grey_chateau })
	hl(0, "@string", { link = "String" })
	hl(0, "@string.documentation", { link = "String" })
	hl(0, "@string.regex", { link = "Constant" })
	hl(0, "@string.escape", { link = "Constant" })
	hl(0, "@string.special", { link = "Contstant" })
	hl(0, "@function", { link = "Function" })
	hl(0, "@function.builtin", { link = "Function" })
	hl(0, "@function.method.call", { fg = c.cascade, italic = true, bold = true })
	hl(0, "@function.macro", { link = "macro" })
	hl(0, "@method", { link = "Function" })
	hl(0, "@constructor", { link = "Function" })
	hl(0, "@parameter", { link = "Identifier" })
	hl(0, "@markup.heading.1.markdown", { fg = c.grey_chateau })
	hl(0, "@markup.heading.3.vimdoc", { bg = c.gravel })
	hl(0, "@markup.raw.markdown_inline", { fg = c.olivine })

	-- LSP
	hl(0, "DiagnosticError", { fg = c.red }) -- Used as the base highlight group. Other Diagnostic highlights link to this by default
	hl(0, "DiagnosticWarn", { fg = c.sunglow }) -- Used as the base highlight group. Other Diagnostic highlights link to this by default
	hl(0, "DiagnosticInfo", { fg = c.celestial_blue }) -- Used as the base highlight group. Other Diagnostic highlights link to this by default
	hl(0, "DiagnosticHint", { fg = c.celestial_blue }) -- Used as the base highlight group. Other Diagnostic highlights link to this by default

	hl(0, "DiagnosticVirtualTextError", { fg = c.red }) -- Used for "Error" diagnostic virtual text
	hl(0, "DiagnosticVirtualTextWarn", { fg = c.sunglow }) -- Used for "Warning" diagnostic virtual text
	hl(0, "DiagnosticVirtualTextInfo", { fg = c.celestial_blue }) -- Used for "Information" diagnostic virtual text
	hl(0, "DiagnosticVirtualTextHint", { fg = c.celestial_blue }) -- Used for "Hint" diagnostic virtual text

	hl(0, "DiagnosticUnderlineError", { sp = c.red, undercurl = true }) -- Used to underline "Error" diagnostics
	hl(0, "DiagnosticUnderlineWarn", { sp = c.sunglow, undercurl = true }) -- Used to underline "Warning" diagnostics
	hl(0, "DiagnosticUnderlineInfo", { sp = c.celestial_blue, undercurl = true }) -- Used to underline "Information" diagnostics
	hl(0, "DiagnosticUnderlineHint", { sp = c.celestial_blue, undercurl = true }) -- Used to underline "Hint" diagnostics

	hl(0, "LspReferenceText", { bg = c.gravel }) -- used for highlighting "text" references
	hl(0, "LspReferenceRead", { bg = c.gravel }) -- used for highlighting "read" references
	hl(0, "LspReferenceWrite", { bg = c.gravel }) -- used for highlighting "write" references

	-- RRethy/vim-illuminate
	hl(0, "IlluminatedWordText", { link = "LspReferenceText" })
	hl(0, "IlluminatedWordRead", { link = "LspReferenceRead" })
	hl(0, "IlluminatedWordWrite", { link = "LspReferenceWrite" })

	-- Fugitive
	hl(0, "fugitiveHeading", { fg = c.grey_chateau })
	hl(0, "fugitiveCount", { fg = c.sunglow })
	hl(0, "fugitiveHash", { link = "Label" })
	hl(0, "fugitiveStagedHeading", { fg = c.grey_chateau, bold = true })
	hl(0, "fugitiveUnstagedHeading", { fg = c.grey_chateau, bold = true })
	hl(0, "fugitiveStagedSection", { fg = c.olivine })
	hl(0, "fugitiveStagedModifier", { fg = c.sunglow })
	hl(0, "fugitiveUnstagedModifier", { fg = c.sunglow })
end

return theme
