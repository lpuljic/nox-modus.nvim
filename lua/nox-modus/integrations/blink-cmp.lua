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
    BlinkCmpMenu = { link = "Pmenu" },
    BlinkCmpMenuBorder = { fg = c.gravel },
    BlinkCmpLabelMatch = { fg = c.sunglow },
    BlinkCmpKind = { fg = c.grey_chateau },
    BlinkCmpDocBorder = { fg = c.gravel, bg = c.bg },
    BlinkCmpDoc = { fg = c.base },
  }
end

return M
