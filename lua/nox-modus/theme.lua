local M = {}

function M.setup()
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	if vim.fn.exists("syntax_on") then
		vim.api.nvim_command("syntax reset")
	end

	vim.o.background = "dark"
	vim.o.termguicolors = true
	vim.g.colors_name = "nox-modus"

	local palette = require("nox-modus.palette")
	local util = require("nox-modus.util")
	local integrations = require("nox-modus.integrations")

	for _, integration in ipairs(integrations) do
		local highlightedGroup = integration.highlight(palette)
		util.initialise(highlightedGroup)
	end

	-- Hide all semantic highlights ( maybe this should be a setting option ????)
	for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
		vim.api.nvim_set_hl(0, group, {})
	end

	-- print(vim.inspect(integrations))
end

return M
