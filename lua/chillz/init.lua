local config = require("chillz.config")
local M = {}

M.setup = function(opts)
	opts = opts or {}

	-- Wczytaj kolory i grupy highlight
	local colors = require("chillz.colors").palette
	local highlights = require("chillz.highlights").setup(colors)

	-- Zastosuj highlighty
	for group, settings in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, settings)
	end

	-- Zastosuj opcje konfiguracyjne (opcjonalnie)
	require("chillz.config").apply(opts)

	config.apply_transparency()
end

return M
