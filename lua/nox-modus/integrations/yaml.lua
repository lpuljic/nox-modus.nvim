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
		-- yamls
		yamlBlockScalarHeader = { fg = c.cascade },
		yamlFlowIndicator = { fg = c.cascade },
		yamlBlockMappingDelimiter = { fg = c.cascade },
	}
end

return M
