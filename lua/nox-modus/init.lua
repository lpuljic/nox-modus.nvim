local M = {}
local theme = require("nox-modus.theme")

M.setup = function()
  vim.cmd('hi clear')

  vim.o.background = 'dark'
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end

  vim.o.termguicolors = true
  vim.g.colors_name = 'nox-modus'

  theme.set_highlights()

  -- Hide all semantic highlights
  for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
   vim.api.nvim_set_hl(0, group, {})
  end
  
end

return M