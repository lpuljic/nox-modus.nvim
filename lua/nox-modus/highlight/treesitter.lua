local c = require("nox-modus.palette")

local hl = vim.api.nvim_set_hl
local treesitter = {}

treesitter.set_highlights = function()
	-- Treesitter
	hl(0, "@comment", { link = "Comment" })
	hl(0, "@variable", { link = "Identifier" })
	hl(0, "@variable.builtin", { fg = c.grayish_blue, bg = "NONE" })
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
end

return treesitter
