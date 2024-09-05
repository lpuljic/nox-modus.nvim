local M = {}

local theme = require("nox-modus.theme")

M.setup = function()
	vim.cmd("hi clear")

	if vim.fn.exists("syntax_on") then
		vim.api.nvim_command("syntax reset")
	end

	vim.o.background = "dark"
	vim.o.termguicolors = true
	vim.g.colors_name = "nox-modus"

	local palette = require("nox-modus.palette")
	local util = require("nox-modus.util")
	local groups = require("no-clown-fiesta.groups")

	for _, group in ipairs(groups) do
		group = group.highlight(palette)
		util.initialise(group)
	end

	-- Hide all semantic highlights
	for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
		vim.api.nvim_set_hl(0, group, {})
	end
end

return M
