local theme = require("nox-modus.theme")

local M = {}

function M.load()
	theme.setup = theme.setup
end

M.setup = theme.setup

return M
