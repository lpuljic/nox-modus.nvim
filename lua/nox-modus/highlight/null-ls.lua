local c = require("nox-modus.palette")

local hl = vim.api.nvim_set_hl
local null_ls = {}

null_ls.set_highlights = function()
	-- Null-ls
	hl(0, "NullLsInfoBorder", { fg = c.gray03, bg = "NONE" })
end

return null_ls
