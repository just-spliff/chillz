local M = {}
local config = require("chillz.config")
local highlights = require("chillz.highlights")
local util = require("chillz.util")

M.setup = function(opts)
	config.setup(opts)
	local groups = highlights.setup()
	for group, props in pairs(groups) do
		util.highlight(group, props)
	end
end

return M
