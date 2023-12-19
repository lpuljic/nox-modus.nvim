-- Navic
local c = require("nox-modus.palette")

local hl = vim.api.nvim_set_hl
local navic = {}

navic.set_highlights = function()
	hl(0, "NavicIconsFile", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsModule", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsNamespace", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsPackage", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsClass", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsMethod", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsProperty", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsField", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsConstructor", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsEnum", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsInterface", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsFunction", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsVariable", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsConstant", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsString", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsNumber", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsBoolean", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsArray", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsObject", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsKey", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsKeyword", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsNull", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsEnumMember", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsStruct", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsEvent", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsOperator", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicIconsTypeParameter", { fg = c.fg, bg = "NONE" })
	hl(0, "NavicText", { fg = c.gray05, bg = "NONE" })
	hl(0, "NavicSeparator", { fg = c.gray04, bg = "NONE" })
end

return navic
