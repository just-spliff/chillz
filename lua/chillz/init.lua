local config = require("chillz.config")
local M = {}

M.setup = function(opts)
	opts = opts or {}

	-- Wczytaj kolory i grupy highlight
	local colors = require("chillz.colors").palette
	local highlights = require("chillz.groups.syntax").setup(colors)

	-- Zastosuj highlighty
	for group, settings in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, settings)
	end

	-- Zastosuj highlighty dla alpha-nvim
	local alpha_highlights = require("chillz.groups.integrations.alpha").get(colors)
	for group, settings in pairs(alpha_highlights) do
		vim.api.nvim_set_hl(0, group, settings)
	end

	-- Zastosuj opcje konfiguracyjne (opcjonalnie)
	require("chillz.config").apply(opts)
	require("chillz.groups.integrations.treesitter")

	config.apply_transparency()
end

return M
