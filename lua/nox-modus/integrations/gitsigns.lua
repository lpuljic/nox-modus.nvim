local M = {}
--Style Options:
--
--    o: standout
--    u: underline
--    c: undercurl
--    d: underdouble
--    t: underdotted
--    h: underdashed
--    s: strikethrough
--    i: italic
--    b: bold
--    r: reverse
--    n: nocombine

function M.highlight(c)
  return {
    -- lewis6991/gitsigns.nvim
    SignAdd = { fg = c.olivine },
    SignChange = { fg = c.orange },
    SignDelete = { fg = c.red },
    GitSignsAdd = { fg = c.olivine },   -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = c.orange }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = c.red },    -- diff mode: Deleted line |diff.txt|
  }
end

return M
