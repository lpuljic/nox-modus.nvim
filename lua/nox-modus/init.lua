local M = {}
local git = require("nox-modus.hihglight.git")
local lsp = require("nox-modus.hihglight.lsp")
local markdown = require("nox-modus.hihglight.markdown")
local navic = require("nox-modus.hihglight.navic")
local null_ls = require("nox-modus.hihglight.null_ls")
local nvim_cmp = require("nox-modus.hihglight.nvim_cmp")
local nvimtree = require("nox-modus.hihglight.nvimtree")
local packer = require("nox-modus.hihglight.packer")
local statusline = require("nox-modus.hihglight.statusline")
local telescope = require("nox-modus.hihglight.telescope")
local treesitter = require("nox-modus.hihglight.treesitter")
local vim = require("nox-modus.theme")

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
