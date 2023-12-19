local M = {}
local git = require("nox-modus.highlight.git")
local lsp = require("nox-modus.highlight.lsp")
local markdown = require("nox-modus.highlight.markdown")
local navic = require("nox-modus.highlight.navic")
local null_ls = require("nox-modus.highlight.null-ls")
local nvim_cmp = require("nox-modus.highlight.nvim-cmp")
local nvimtree = require("nox-modus.highlight.nvimtree")
local packer = require("nox-modus.highlight.packer")
local statusline = require("nox-modus.highlight.statusline")
local telescope = require("nox-modus.highlight.telescope")
local treesitter = require("nox-modus.highlight.treesitter")
local vim = require("nox-modus.highlight.vim")

M.setup = function()
	vim.cmd("hi clear")

	vim.o.background = "dark"
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "nox-modus"

	git.set_highlights()
	lsp.set_highlights()
	markdown.set_highlights()
	navic.set_highlights()
	null_ls.set_highlights()
	nvim_cmp.set_highlights()
	nvimtree.set_highlights()
	packer.set_highlights()
	statusline.set_highlights()
	telescope.set_highlights()
	treesitter.set_highlights()
	vim.set_highlights()

	-- Hide all semantic highlights
	for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
		vim.api.nvim_set_hl(0, group, {})
	end
end

return M
