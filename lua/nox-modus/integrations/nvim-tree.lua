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
		-- kyazdani42/nvim-tree.lua
		NvimTreeRootFolder = { fg = c.monsoon, italic = true, bold = true },
		NvimTreeFolderIcon = { fg = c.grey_chateau },
		NvimTreeGitNew = { fg = c.olivine },
		NvimTreeOpenedFile = { italic = true },
		NvimTreeOpenedFolderName = { italic = true },
		NvimTreeGitRenamed = { fg = c.olivine },
		NvimTreeEmptyFolderName = { italic = true },
		NvimTreeGitDeleted = { fg = c.red },
		NvimTreeGitMerge = { fg = c.orange },
		NvimTreeGitStaged = { fg = c.olivine },
		NvimTreeGitDirty = { fg = c.sunglow },
		NvimTreeSymlink = { fg = c.monsoon },
		NvimTreeGitIgnored = { italic = true },
		NvimTreeExecFile = { fg = c.grey_chateau, italic = true },
	}
end

return M
