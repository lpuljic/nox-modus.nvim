local theme = require("nox-modus.theme")

local M = {}

-- Function to load the theme and apply the setup
function M.load()
	theme.setup() -- Actually call the setup function
end

M.setup = theme.setup

return M
