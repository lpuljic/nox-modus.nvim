
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
    -- tpope/vim-fugitive
	fugitiveHeading =  { fg = c.grey_chateau },
	fugitiveCount =  { fg = c.sunglow },
	fugitiveHash =  { link = "Label" },
	fugitiveStagedHeading =  { fg = c.grey_chateau, bold = true },
	fugitiveUnstagedHeading =  { fg = c.grey_chateau, bold = true },
	fugitiveStagedSection =  { fg = c.olivine },
	fugitiveStagedModifier =  { fg = c.sunglow },
	fugitiveUnstagedModifier =  { fg = c.sunglow },
    }
end

return M
