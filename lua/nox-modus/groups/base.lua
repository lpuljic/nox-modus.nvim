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
	-- editor
	Normal =  { fg = c.base, bg = c.bg }, -- normal text
	NormalNC =  { fg = c.base, bg = c.bg }, -- normal text in non-current windows
	Cursor =  { fg = c.gun_powder, bg = c.Aluminium }, -- character under the cursor
	Underlined =  { underline = true }, -- (preferred, text that stands out, HTML links
	SpecialKey =  { fg = c.base, bold = true }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
	NonText =  { fg = c.storm_dust }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line,. See also |hl-EndOfBuffer|.
	Insert =  { fg = c.red, bg = c.orange },
	MsgArea =  { fg = c.base, bg = c.bg }, -- Area for messages and cmdline
	VertSplit =  { fg = c.gravel }, -- the column separating vertically split windows
	WinSeparator =  { fg = c.gravel }, -- Colour vertically split line (See :h 'fillchars'.,
	LineNr =  { fg = c.gravel }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
	CursorLineNr =  { fg = c.sunglow, bg = c.bg }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
	CursorLine =  { bg = c.zeus }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg, is not set.
	SignColumn =  { bg = c.bg }, -- column where |signs| are displayed
	ColorColumn =  { bg = c.zeus }, -- used for the columns set with 'colorcolumn'
	CursorColumn =  { bg = c.gravel }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
	SpellBad =  { sp = c.red, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
	SpellCap =  { sp = c.sunglow, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
	SpellLocal =  { sp = c.celestial_blue, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
	SpellRare =  { sp = c.celestial_blue, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
	ErrorMsg =  { fg = c.red, bg = c.bg, bold = true }, -- error messages on the command line
	WarningMsg =  { fg = c.orange, bg = c.bg }, -- warning messages
	ModeMsg =  { fg = c.base, bg = c.bg },
	MoreMsg =  { fg = c.celestial_blue }, -- |more-prompt|
	Error =  { fg = c.red, bold = true }, -- (preferred, any erroneous construct
	Visual =  { fg = c.gravel, bg = c.ash_grey }, -- Visual mode selection
	VisualNOS =  { bg = c.red }, -- Visual mode selection when vim is "Not Owning the Selection".
	Search =  { fg = c.bg, bg = c.base }, -- Last search pattern highlighting (see 'hlsearch',.  Also used for similar items that need to stand out.
	IncSearch =  { fg = c.bg, bg = c.base }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
	Pmenu =  { fg = c.base, bg = c.gravel }, -- Popup menu: normal item.
	PmenuSel =  { fg = c.base, bg = c.storm_dust }, -- Popup menu: selected item.
	PmenuSbar =  { fg = c.base, bg = c.gravel }, -- Popup menu: scrollbar.
	PmenuThumb =  { fg = c.base, bg = c.ash_grey }, -- Popup menu: Thumb of the scrollbar.
	DiffText =  { fg = c.base, bg = c.git.DiffText }, -- diff mode: Changed text within a changed line |diff.txt|
	DiffAdd =  { fg = c.base, bg = c.git.DiffAdd }, -- diff mode: Added line |diff.txt|
	DiffChange =  { fg = c.base, bg = c.git.DiffChange }, -- diff mode: Changed line |diff.txt|
	DiffDelete =  { fg = c.base, bg = c.git.DiffDelete }, -- diff mode: Deleted line |diff.txt|
	WildMenu =  { fg = c.base, bg = c.bg }, -- current match in 'wildmenu' completion
	Folded =  { fg = c.storm_dust }, -- line used for closed folds
	FoldColumn =  { fg = c.dawn }, -- 'foldcolumn'
	Whitespace =  { fg = c.base }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
	NormalFloat =  { fg = "NONE" }, -- Normal text in floating windows.
	FloatBorder =  { fg = c.ash_grey, bg = c.bg },
	QuickFixLine =  { bg = c.gravel }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
	qfFileName =  { fg = c.base },
	qfLineNr =  { fg = c.sunglow },
	MatchParen =  { fg = c.orange }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
	lCursor =  { fg = c.gun_powder, bg = c.Aluminium }, -- the character under the cursor when |language-mapping| is used (see 'guicursor',
	CursorIM =  { fg = c.gun_powder, bg = c.Aluminium }, -- like Cursor, but used when in IME mode |CursorIM|
	TermCursor =  { fg = c.gun_powder, bg = c.Aluminium }, -- cursor in a focused terminal
	TermCursorNC =  { fg = c.gun_powder, bg = c.Aluminium }, -- cursor in an unfocused terminal
	Conceal =  { fg = c.base }, -- placeholder characters substituted for concealed text (see 'conceallevel',
	Directory =  { fg = c.dawn }, -- directory names (and other special names in listings,
	Substitute =  { fg = c.bg, bg = c.ash_grey }, -- |:substitute| replacement text highlighting
	Question =  { fg = c.sunglow }, -- |hit-enter| prompt and yes/no questions
	EndOfBuffer =  { fg = c.bg }, -- filler lines (~, after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
	TabLine =  { fg = c.dawn, bg = c.bg }, -- tab pages line, not active tab page label
	TabLineSel =  { fg = c.base, bg = c.bg }, -- tab pages line, active tab page label
	TabLineFill =  { fg = c.bg, bg = c.bg }, -- tab pages line, where there are no labels
	-- Code
	Comment =  { fg = c.storm_dust, italic = true }, -- any comment
	Title =  { fg = c.warm_grey, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
	String =  { fg = c.cascade }, --   a string constant: "this is a string"
	Character =  { fg = c.ash_grey }, --  a character constant: 'c', '\n'
	Number =  { fg = c.dawn }, --   a number constant: 234, 0xff
	Float =  { link = "Number" }, --    a floating point constant: 2.3e10
	Boolean =  { fg = c.grey_chateau }, --  a boolean constant: TRUE, false
	Constant =  { fg = c.cascade }, -- (preferred, any constant
	Type =  { fg = c.grey_chateau }, -- (preferred, int, long, char, etc.
	StorageClass =  { fg = c.base }, -- static, register, volatile, etc.
	Structure =  { fg = c.base }, --  struct, union, enum, etc.
	Typedef =  { fg = c.base }, --  A typedef
	PreProc =  { fg = c.grey_chateau }, -- (preferred, generic Preprocessor
	Include =  { fg = c.grey_chateau }, --  preprocessor #include
	Define =  { fg = c.warm_grey }, --   preprocessor #define
	Macro =  { fg = c.warm_grey }, --    same as Define
	PreCondit =  { fg = c.warm_grey }, --  preprocessor #if, #else, #endif, etc.
	Statement =  { fg = c.grey_chateau }, -- (preferred, any statement
	Conditional =  { fg = c.grey_chateau }, --  if, then, else, endif, switch, etc.
	Repeat =  { fg = c.grey_chateau }, --   for, do, while, etc.
	Label =  { fg = c.ash_grey }, --    case, default, etc.
	Operator =  { fg = c.ash_grey }, -- "sizeof", "+", "*", etc.
	Keyword =  { fg = c.grey_chateau }, --  any other keyword
	Variable =  { fg = c.base }, -- Any variable name that does not have another highlight.
	Exception =  { fg = c.ash_grey }, --  try, catch, throw
	Identifier =  { fg = c.base }, -- (preferred, any variable name
	Function =  { fg = c.cascade }, -- function name (also: methods for classes,
	Special =  { fg = c.grey_chateau }, -- (preferred, any special symbol
	SpecialChar =  { fg = c.base }, --  special character in a constant
	Tag =  { fg = c.ash_grey }, --    you can use CTRL-] on this
	Delimiter =  { fg = c.ash_grey }, --  character that needs attention
	Debug =  { fg = c.red }, --    debugging statements
	Bold =  { bold = true },
	Italic =  { italic = true },
	Todo =  { fg = c.bg, bg = c.sunglow, bold = true }, -- (preferred, anything that needs extra attention; mostly the keywords TODO FIXME and XXX
	Ignore =  { fg = c.red, bold = true }, -- (preferred, left blank, hidden  |hl-Ignore|
	-- StatusLine
	StatusLine =  { fg = c.ash_grey, bg = c.gravel }, -- status line of current window
	StatusLineNC =  { fg = c.storm_dust, bg = c.gravel }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
	StatusLineSeparator =  { fg = c.ash_grey },
	StatusLineTerm =  { fg = c.ash_grey },
	StatusLineTermNC =  { fg = c.ash_grey },

    }
end

return M