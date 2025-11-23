local M = {}
-- Style Options:
-- underline = true,
-- undercurl = true,
-- strikethrough = true,
-- italic = true,
-- bold = true,
-- underdouble
-- underdotted
-- underdashed

function M.highlight(c)
  return {
    BlinkCmpDocBorder           = { fg = c.gravel },          -- border for completion documentation
    BlinkCmpMenu                = { link = "Pmenu" },         -- menu for completion items
    BlinkCmpMenuBorder          = { fg = c.gravel },          -- border for completion menu
    BlinkCmpLabelMatch          = { fg = c.sunglow },         -- matched label in completion items
    BlinkCmpKind                = { fg = c.grey_chateau },    -- kind of completion item
    BlinkCmpDoc                 = { fg = c.dawn },
    BlinkCmpSignatureHelpBorder = { fg = c.gravel },          -- border for signature help
    BlinkCmpLabelDeprecated     = { strikethrough = true },   -- deprecated label in completion

    BlinkCmpGhostText           = { fg = c.red },             -- ghost text in completion
  }
end

return M
