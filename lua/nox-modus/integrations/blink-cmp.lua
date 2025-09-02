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
    BlinkCmpKindText = { fg = c.red }
    BlinkCmpMenu = { fg = c.red, bg = c.red },
    BlinkCmpMenuBorder = { fg = c.red },
    BlinkCmpLabelMatch = { fg = c.sunglow },
  }
end

return M
