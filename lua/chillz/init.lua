local config = require("chillz.config")
local M = {}

M.setup = function(opts)
	opts = opts or {}

	-- Load colors and highlight groups
	local colors = require("chillz.colors").palette
	local highlights = require("chillz.groups.syntax").setup(colors)
	local dashboard = require("chillz.groups.integrations.dashboard-nvim").setup(colors)

	-- Apply highlight groups
	for group, settings in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, settings)
	end

	for group, settings in pairs(dashboard) do
		vim.api.nvim_set_hl(0, group, settings)
	end

	-- Apply configuration options (optional)
	require("chillz.config").apply(opts)
	require("chillz.groups.integrations.treesitter")

	config.apply_transparency()
end

return M
