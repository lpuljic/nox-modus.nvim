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
		-- Vimdoc
		["@markup.heading.1.vimdoc"] = { fg = c.cascade },
		["@label.vimdoc"] = { fg = c.cascade },
		["@markup.link.vimdoc"] = { fg = c.grey_chateau },
	}
end

return M
