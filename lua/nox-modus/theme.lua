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
	hl(0, "Normal", { fg = c.fg, bg = c.bg }) -- normal text
	hl(0, "NormalNC", { fg = c.fg, bg = c.bg }) -- normal text in non-current windows
	hl(0, "Cursor", { fg = c.gun_powder, bg = c.Aluminium }) -- character under the cursor
	hl(0, "Underlined", { fg = "NONE", bg = "NONE", underline = true }) -- (preferred) text that stands out, HTML links
	hl(0, "SpecialKey", { fg = c.fg, bg = "NONE", bold = true }) -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
	hl(0, "NonText", { fg = c.gray2, bg = "NONE" }) -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
	hl(0, "Insert", { fg = c.red0, bg = c.orange2 })
	hl(0, "MsgArea", { fg = c.fg, bg = c.bg }) -- Area for messages and cmdline
	hl(0, "VertSplit", { fg = c.gray1, bg = "NONE" }) -- the column separating vertically split windows
	hl(0, "LineNr", { fg = c.gray1, bg = "NONE" }) -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
	hl(0, "CursorLineNr", { fg = c.yellow0, bg = c.bg }) -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
	hl(0, "CursorLine", { fg = "NONE", bg = c.gray8 }) -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
	hl(0, "SignColumn", { fg = "NONE", bg = c.bg }) -- column where |signs| are displayed
	hl(0, "ColorColumn", { fg = "NONE", bg = c.dawn }) -- used for the columns set with 'colorcolumn'
	hl(0, "CursorColumn", { fg = "NONE", bg = c.gray1 }) -- Screen-column at the cursor, when 'cursorcolumn' is set.
	hl(0, "SpellBad", { sp = c.red0, undercurl = true }) -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
	hl(0, "SpellCap", { sp = c.yellow0, undercurl = true }) -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
	hl(0, "SpellLocal", { sp = c.blue2, undercurl = true }) -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
	hl(0, "SpellRare", { sp = c.blue2, undercurl = true }) -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
	hl(0, "ErrorMsg", { fg = c.red0, bg = c.bg, bold = true }) -- error messages on the command line
	hl(0, "WarningMsg", { fg = c.orange2, bg = c.bg }) -- warning messages
	hl(0, "ModeMsg", { fg = c.fg, bg = c.bg })
	hl(0, "MoreMsg", { fg = c.blue2, bg = "NONE" }) -- |more-prompt|
	hl(0, "Error", { fg = c.red0, bg = "NONE", bold = true }) -- (preferred) any erroneous construct
	hl(0, "Visual", { fg = c.gray1, bg = c.grey_chateau }) -- Visual mode selection
	hl(0, "VisualNOS", { fg = "NONE", bg = c.red0 }) -- Visual mode selection when vim is "Not Owning the Selection".
	hl(0, "Search", { fg = c.bg, bg = c.fg }) -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
	hl(0, "IncSearch", { fg = c.bg, bg = c.fg }) -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
	hl(0, "Pmenu", { fg = c.fg, bg = c.gray1 }) -- Popup menu: normal item.
	hl(0, "PmenuSel", { fg = c.fg, bg = c.gray2 }) -- Popup menu: selected item.
	hl(0, "PmenuSbar", { fg = c.fg, bg = c.gray1 }) -- Popup menu: scrollbar.
	hl(0, "PmenuThumb", { fg = c.fg, bg = c.grey_chateau }) -- Popup menu: Thumb of the scrollbar.
	hl(0, "DiffText", { fg = c.fg, bg = c.git.DiffText }) -- diff mode: Changed text within a changed line |diff.txt|
	hl(0, "DiffAdd", { fg = c.fg, bg = c.git.DiffAdd }) -- diff mode: Added line |diff.txt|
	hl(0, "DiffChange", { fg = c.fg, bg = c.git.DiffChange }) -- diff mode: Changed line |diff.txt|
	hl(0, "DiffDelete", { fg = c.fg, bg = c.git.DiffDelete }) -- diff mode: Deleted line |diff.txt|
	hl(0, "WildMenu", { fg = c.fg, bg = c.bg }) -- current match in 'wildmenu' completion
	hl(0, "Folded", { fg = c.gray2, bg = "NONE" }) -- line used for closed folds
	hl(0, "FoldColumn", { fg = c.dawn, bg = "NONE" }) -- 'foldcolumn'
	hl(0, "Whitespace", { fg = c.fg, bg = "NONE" }) -- "nbsp", "space", "tab" and "trail" in 'listchars'
	hl(0, "NormalFloat", { fg = "NONE", bg = "NONE" }) -- Normal text in floating windows.
	hl(0, "FloatBorder", { fg = c.grey_chateau, bg = c.bg })
	hl(0, "QuickFixLine", { fg = "NONE", bg = c.gray1 }) -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
	hl(0, "qfFileName", { fg = c.fg, bg = "NONE" })
	hl(0, "qfLineNr", { fg = c.yellow0, bg = "NONE" })
	hl(0, "MatchParen", { fg = c.orange2, bg = "NONE" }) -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
	hl(0, "lCursor", { fg = c.gun_powder, bg = c.Aluminium }) -- the character under the cursor when |language-mapping| is used (see 'guicursor')
	hl(0, "CursorIM", { fg = c.gun_powder, bg = c.Aluminium }) -- like Cursor, but used when in IME mode |CursorIM|
	hl(0, "TermCursor", { fg = c.gun_powder, bg = c.Aluminium }) -- cursor in a focused terminal
	hl(0, "TermCursorNC", { fg = c.gun_powder, bg = c.Aluminium }) -- cursor in an unfocused terminal
	hl(0, "Conceal", { fg = c.fg, bg = "NONE" }) -- placeholder characters substituted for concealed text (see 'conceallevel')
	hl(0, "Directory", { fg = c.dawn, bg = "NONE" }) -- directory names (and other special names in listings)
	hl(0, "Substitute", { fg = c.bg, bg = c.grey_chateau }) -- |:substitute| replacement text highlighting
	hl(0, "Question", { fg = c.yellow0, bg = "NONE" }) -- |hit-enter| prompt and yes/no questions
	hl(0, "EndOfBuffer", { fg = c.bg, bg = "NONE" }) -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
	hl(0, "TabLine", { fg = c.dawn, bg = c.bg }) -- tab pages line, not active tab page label
	hl(0, "TabLineSel", { fg = c.fg, bg = c.bg }) -- tab pages line, active tab page label
	hl(0, "TabLineFill", { fg = c.bg, bg = c.bg }) -- tab pages line, where there are no labels

	-- Code
	hl(0, "Comment", { fg = c.gray2, bg = "NONE", italic = true }) -- any comment
	hl(0, "Title", { fg = c.gray5, bg = "NONE", bold = true }) -- titles for output from ":set all", ":autocmd" etc.
	hl(0, "String", { fg = c.cascade, bg = "NONE" }) --   a string constant: "this is a string"
	hl(0, "Character", { fg = c.grey_chateau, bg = "NONE" }) --  a character constant: 'c', '\n'
	hl(0, "Number", { fg = c.gray4, bg = "NONE" }) --   a number constant: 234, 0xff
	hl(0, "Float", { fg = c.gray4, bg = "NONE" }) --    a floating point constant: 2.3e10
	hl(0, "Boolean", { fg = c.blue3, bg = "NONE" }) --  a boolean constant: TRUE, false
	hl(0, "Constant", { fg = c.cascade, bg = "NONE" }) -- (preferred) any constant
	hl(0, "Type", { fg = c.blue3, bg = "NONE" }) -- (preferred) int, long, char, etc.
	hl(0, "StorageClass", { fg = c.fg, bg = "NONE" }) -- static, register, volatile, etc.
	hl(0, "Structure", { fg = c.fg, bg = "NONE" }) --  struct, union, enum, etc.
	hl(0, "Typedef", { fg = c.fg, bg = "NONE" }) --  A typedef
	hl(0, "PreProc", { fg = c.blue3, bg = "NONE" }) -- (preferred) generic Preprocessor
	hl(0, "Include", { fg = c.blue3, bg = "NONE" }) --  preprocessor #include
	hl(0, "Define", { fg = c.gray5, bg = "NONE" }) --   preprocessor #define
	hl(0, "Macro", { fg = c.gray5, bg = "NONE" }) --    same as Define
	hl(0, "PreCondit", { fg = c.gray5, bg = "NONE" }) --  preprocessor #if, #else, #endif, etc.
	hl(0, "Statement", { fg = c.blue3, bg = "NONE" }) -- (preferred) any statement
	hl(0, "Conditional", { fg = c.blue3, bg = "NONE" }) --  if, then, else, endif, switch, etc.
	hl(0, "Repeat", { fg = c.blue3, bg = "NONE" }) --   for, do, while, etc.
	hl(0, "Label", { fg = c.grey_chateau, bg = "NONE" }) --    case, default, etc.
	hl(0, "Operator", { fg = c.grey_chateau, bg = "NONE" }) -- "sizeof", "+", "*", etc.
	hl(0, "Keyword", { fg = c.blue3, bg = "NONE" }) --  any other keyword
	hl(0, "Variable", { fg = c.fg, bg = "NONE" }) -- Any variable name that does not have another highlight.
	hl(0, "Exception", { fg = c.grey_chateau, bg = "NONE" }) --  try, catch, throw
	hl(0, "Identifier", { fg = c.fg, bg = "NONE" }) -- (preferred) any variable name
	hl(0, "Function", { fg = c.cascade, bg = "NONE" }) -- function name (also: methods for classes)
	hl(0, "Special", { fg = c.blue3, bg = "NONE" }) -- (preferred) any special symbol
	hl(0, "SpecialChar", { fg = c.fg, bg = "NONE" }) --  special character in a constant
	hl(0, "Tag", { fg = c.grey_chateau, bg = "NONE" }) --    you can use CTRL-] on this
	hl(0, "Delimiter", { fg = c.grey_chateau, bg = "NONE" }) --  character that needs attention
	hl(0, "Debug", { fg = c.red0, bg = "NONE" }) --    debugging statements
	hl(0, "Bold", { bold = true })
	hl(0, "Italic", { italic = true })
	hl(0, "Todo", { fg = c.bg, bg = c.yellow0, bold = true }) -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
	hl(0, "Ignore", { fg = c.red0, bg = "NONE", bold = true }) -- (preferred) left blank, hidden  |hl-Ignore|

	-- StatusLine
	hl(0, "StatusLine", { fg = c.grey_chateau, bg = c.gray1 }) -- status line of current window
	hl(0, "StatusLineNC", { fg = c.gray2, bg = c.gray1 }) -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
	hl(0, "StatusLineSeparator", { fg = c.grey_chateau, bg = "NONE" })
	hl(0, "StatusLineTerm", { fg = c.grey_chateau, bg = "NONE" })
	hl(0, "StatusLineTermNC", { fg = c.grey_chateau, bg = "NONE" })

	-- Git
	hl(0, "SignAdd", { fg = c.olivine, bg = "NONE" })
	hl(0, "SignChange", { fg = c.orange2, bg = "NONE" })
	hl(0, "SignDelete", { fg = c.red0, bg = "NONE" })
	hl(0, "GitSignsAdd", { fg = c.gitSigns.add }) -- diff mode: Added line |diff.txt|
	hl(0, "GitSignsChange", { fg = c.gitSigns.change, bg = "NONE" }) -- diff mode: Changed line |diff.txt|
	hl(0, "GitSignsDelete", { fg = c.gitSigns.delete, bg = "NONE" }) -- diff mode: Deleted line |diff.txt|
	hl(0, "gitCommitSummary", { fg = c.fg, bg = c.bg, italic = true })
	hl(0, "gitCommitSelectedFile", { fg = c.cascade, bg = c.bg, italic = true })

	-- Packer
	hl(0, "packerString", { fg = c.orange2, bg = "NONE" })
	hl(0, "packerHash", { fg = c.monsoon, bg = "NONE" })
	hl(0, "packerOutput", { fg = c.purple, bg = "NONE" })
	hl(0, "packerRelDate", { fg = c.grey_chateau, bg = "NONE" })
	hl(0, "packerSuccess", { fg = c.olivine, bg = "NONE" })
	hl(0, "packerStatusSuccess", { fg = c.monsoon, bg = "NONE" })

	hl(0, "CmpPmenuSel", { fg = c.fg, bg = c.gray1 })
	hl(0, "CmpItemAbbrDeprecated", { fg = c.grey_chateau, bg = "NONE", strikethrough = true })
	hl(0, "CmpItemAbbrMatch", { fg = c.fg, bg = "NONE" })
	hl(0, "CmpItemAbbrMatchFuzzy", { fg = c.fg, bg = "NONE" })
	hl(0, "CmpItemKind", { fg = c.blue3, bg = "NONE" })

	-- Nvim-Tree
	hl(0, "NvimTreeGitNew", { fg = c.olivine, bg = "NONE" })
	hl(0, "NvimTreeGitRenamed", { fg = c.olivine, bg = "NONE" })
	hl(0, "NvimTreeGitDeleted", { fg = c.red0, bg = "NONE" })
	hl(0, "NvimTreeGitMerge", { fg = c.orange2, bg = "NONE" })
	hl(0, "NvimTreeGitStaged", { fg = c.olivine, bg = "NONE" })
	hl(0, "NvimTreeGitDirty", { fg = c.yellow0, bg = "NONE" })
	hl(0, "NvimTreeSymlink", { fg = c.monsoon, bg = "NONE" })
	hl(0, "NvimTreeFolderIcon", { fg = c.blue3, bg = "NONE" })
	hl(0, "NvimTreeOpenedFolderIcon", { fg = c.blue1, bg = "NONE", italic = true })
	hl(0, "NvimTreeOpenedFolderName", { fg = "NONE", bg = "NONE", italic = true })
	hl(0, "NvimTreeOpenedFile", { italic = true })
	hl(0, "NvimTreeGitIgnored", { fg = "NONE", bg = "NONE", italic = true })
	hl(0, "NvimTreeEmptyFolderName", { fg = "NONE", bg = "NONE", italic = true })
	hl(0, "NvimTreeRootFolder", { fg = c.monsoon, bg = "NONE", italic = true })

	-- Neo-Tree
	hl(0, "NeoTreeFileNameOpened", { bg = c.gray8 })

	-- Telescope
	hl(0, "TelescopeSelection", { fg = "NONE", bg = c.gray1 })
	hl(0, "TelescopeSelectionCaret", { fg = c.blue3, bg = "NONE" })
	hl(0, "TelescopeBorder", { fg = c.gray5, bg = "NONE" })
	hl(0, "TelescopePromptfix", { fg = c.red0, bg = "NONE" })
	hl(0, "TelescopePromptBorder", { fg = c.blue3, bg = "NONE" })
	hl(0, "TelescopeResultsBorder", { fg = c.gray5, bg = "NONE" })
	hl(0, "TelescopePreviewBorder", { fg = c.gray5, bg = "NONE" })
	hl(0, "TelescopeMatching", { fg = c.yellow0, bg = "NONE" })
	hl(0, "TelescopePromptPrefix", { fg = c.blue3, bg = "NONE" })
	hl(0, "TelescopePromptTitle", { fg = c.blue3, bg = "NONE" })

	-- Null-ls
	hl(0, "NullLsInfoBorder", { fg = c.grey_chateau, bg = "NONE" })

	-- Markdown
	hl(0, "markdownBlockquote", { fg = c.orange1, bg = "NONE" })
	hl(0, "markdownCode", { fg = c.orange1, bg = "NONE", underline = true })
	hl(0, "markdownCodeBlock", { fg = c.grey_chateau, bg = "NONE" })
	hl(0, "markdownCodeDelimiter", { fg = c.fg, bg = "NONE" })
	hl(0, "markdownH1", { fg = c.blue2, bg = "NONE", bold = true })
	hl(0, "markdownH2", { fg = c.blue2, bg = "NONE", bold = true })
	hl(0, "markdownH3", { fg = c.blue2, bg = "NONE", bold = true })
	hl(0, "markdownH4", { fg = c.blue2, bg = "NONE", bold = true })
	hl(0, "markdownH5", { fg = c.blue2, bg = "NONE", bold = true })
	hl(0, "markdownH6", { fg = c.blue2, bg = "NONE", bold = true })
	hl(0, "markdownListMarker", { fg = c.blue2, bg = "NONE" })
	hl(0, "markdownOrderedListMarker", { fg = c.blue2, bg = "NONE" })
	hl(0, "markdownUrl", { fg = c.fg, bg = "NONE" })
	hl(0, "markdownLinkText", { fg = c.orange1, bg = "NONE" })
	hl(0, "markdownHeadingDelimiter", { fg = c.blue2, bg = "NONE" })
	hl(0, "markdownId", { link = "Identifier" })
	hl(0, "markdownItalic", { link = "Italic" })
	hl(0, "markdownBoldItalic", { fg = c.yellow0, bg = "NONE", bold = true, italic = true })
	hl(0, "markdownBold", { fg = "NONE", bg = "NONE", bold = true })

	-- Treesitter
	hl(0, "@comment", { link = "Comment" })
	hl(0, "@comment.error", { fg = c.bg, bg = c.red1, bold = true })
	hl(0, "@comment.warning", { fg = c.bg, bg = c.yellow0, bold = true })
	hl(0, "@comment.todo", { fg = c.bg, bg = c.red2, bold = true })
	hl(0, "@comment.hint", { fg = c.bg, bg = c.blue2, bold = true })
	hl(0, "@comment.note", { fg = c.bg, bg = c.blue2, bold = true })
	hl(0, "@variable", { link = "Identifier" })
	hl(0, "@variable.builtin", { fg = c.blue3, bg = "NONE" })
	hl(0, "@string", { link = "String" })
	hl(0, "@string.documentation", { link = "String" })
	hl(0, "@string.regex", { link = "Constant" })
	hl(0, "@string.escape", { link = "Constant" })
	hl(0, "@string.special", { link = "Contstant" })
	hl(0, "@function", { link = "Function" })
	hl(0, "@function.builtin", { link = "Function" })
	hl(0, "@function.macro", { link = "macro" })
	hl(0, "@method", { link = "Function" })
	hl(0, "@constructor", { link = "Function" })
	hl(0, "@parameter", { link = "Identifier" })
	hl(0, "@markup.heading.3.vimdoc", { bg = c.gray8 })

	-- LSP
	hl(0, "DiagnosticError", { fg = c.red0 }) -- Used as the base highlight group. Other Diagnostic highlights link to this by default
	hl(0, "DiagnosticWarn", { fg = c.yellow0 }) -- Used as the base highlight group. Other Diagnostic highlights link to this by default
	hl(0, "DiagnosticInfo", { fg = c.blue2 }) -- Used as the base highlight group. Other Diagnostic highlights link to this by default
	hl(0, "DiagnosticHint", { fg = c.blue2 }) -- Used as the base highlight group. Other Diagnostic highlights link to this by default

	hl(0, "DiagnosticVirtualTextError", { fg = c.red0 }) -- Used for "Error" diagnostic virtual text
	hl(0, "DiagnosticVirtualTextWarn", { fg = c.yellow0 }) -- Used for "Warning" diagnostic virtual text
	hl(0, "DiagnosticVirtualTextInfo", { fg = c.blue2 }) -- Used for "Information" diagnostic virtual text
	hl(0, "DiagnosticVirtualTextHint", { fg = c.blue2 }) -- Used for "Hint" diagnostic virtual text

	hl(0, "DiagnosticUnderlineError", { sp = c.red0, undercurl = true }) -- Used to underline "Error" diagnostics
	hl(0, "DiagnosticUnderlineWarn", { sp = c.yellow0, undercurl = true }) -- Used to underline "Warning" diagnostics
	hl(0, "DiagnosticUnderlineInfo", { sp = c.blue2, undercurl = true }) -- Used to underline "Information" diagnostics
	hl(0, "DiagnosticUnderlineHint", { sp = c.blue2, undercurl = true }) -- Used to underline "Hint" diagnostics

	hl(0, "LspReferenceText", { fg = "NONE", bg = c.gray1 }) -- used for highlighting "text" references
	hl(0, "LspReferenceRead", { fg = "NONE", bg = c.gray1 }) -- used for highlighting "read" references
	hl(0, "LspReferenceWrite", { fg = "NONE", bg = c.gray1 }) -- used for highlighting "write" references

	-- Illuminate
	hl(0, "IlluminatedWordText", { link = "LspReferenceText" })
	hl(0, "IlluminatedWordRead", { link = "LspReferenceRead" })
	hl(0, "IlluminatedWordWrite", { link = "LspReferenceWrite" })

	-- Fugitive
	hl(0, "fugitiveHeading", { fg = c.blue3 })
	hl(0, "fugitiveCount", { fg = c.yellow0 })
	hl(0, "fugitiveHash", { link = "Label" })
	hl(0, "fugitiveStagedHeading", { fg = c.blue3, bold = true })
	hl(0, "fugitiveUnstagedHeading", { fg = c.blue3, bold = true })
	hl(0, "fugitiveStagedModifier", { fg = c.yellow0 })
	hl(0, "fugitiveUnstagedModifier", { fg = c.yellow0 })
end

return theme