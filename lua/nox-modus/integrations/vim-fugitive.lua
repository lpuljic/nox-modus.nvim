local util = require('nox-modus.util')
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
	gitCommitSummary =  { fg = c.base, bg = c.bg, italic = true },
	gitCommitSelectedFile =  { fg = c.cascade, bg = c.bg, italic = true },
	['@comment.warning.gitcommit'] = { bg = util.blend(c.orange, c.bg0, 0.75) },
    }
end

return M
