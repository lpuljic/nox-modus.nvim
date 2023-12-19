-- NvimTree
local c = require("nox-modus.palette")

local hl = vim.api.nvim_set_hl
local nvimtree = {}

nvimtree.set_highlights = function()
	hl(0, "NvimTreeGitNew", { fg = c.green, bg = "NONE" })
	hl(0, "NvimTreeGitRenamed", { fg = c.green, bg = "NONE" })
	hl(0, "NvimTreeGitDeleted", { fg = c.red, bg = "NONE" })
	hl(0, "NvimTreeGitMerge", { fg = c.orange, bg = "NONE" })
	hl(0, "NvimTreeGitStaged", { fg = c.green, bg = "NONE" })
	hl(0, "NvimTreeGitDirty", { fg = c.yellow, bg = "NONE" })
	hl(0, "NvimTreeSymlink", { fg = c.blue, bg = "NONE" })
	hl(0, "NvimTreeFolderIcon", { fg = c.grayish_blue, bg = "NONE" })
	hl(0, "NvimTreeOpenedFolderName", { fg = "NONE", bg = "NONE", italic = true })
	hl(0, "NvimTreeGitIgnored", { fg = "NONE", bg = "NONE", italic = true })
	hl(0, "NvimTreeEmptyFolderName", { fg = "NONE", bg = "NONE", italic = true })
	hl(0, "NvimTreeRootFolder", { fg = c.blue, bg = "NONE", italic = true })
end

return nvimtree
