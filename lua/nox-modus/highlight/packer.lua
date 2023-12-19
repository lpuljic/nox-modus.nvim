-- Packer
local c = require("nox-modus.palette")

local hl = vim.api.nvim_set_hl
local packer = {}

packer.set_highlights = function()
	hl(0, "packerString", { fg = c.orange, bg = "NONE" })
	hl(0, "packerHash", { fg = c.blue, bg = "NONE" })
	hl(0, "packerOutput", { fg = c.purple, bg = "NONE" })
	hl(0, "packerRelDate", { fg = c.gray03, bg = "NONE" })
	hl(0, "packerSuccess", { fg = c.green, bg = "NONE" })
	hl(0, "packerStatusSuccess", { fg = c.blue, bg = "NONE" })
end

return packer
