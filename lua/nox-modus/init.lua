local M = {}

function M.setup()
	vim.cmd("hi clear")

	if vim.fn.exists("syntax_on") then
		vim.api.nvim_command("syntax reset")
	end

	vim.o.background = "dark"
	vim.o.termguicolors = true
	vim.g.colors_name = "nox-modus"

	local palette = require("nox-modus.palette")
	local util = require("nox-modus.util")
	local integrations = require("nox-modus.integrations")

	for _, group in ipairs(integrations) do
		group = group.highlight(palette)
		util.initialise(group)
	end

	-- Hide all semantic highlights
	for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
		vim.api.nvim_set_hl(0, group, {})
	end
end

return M
