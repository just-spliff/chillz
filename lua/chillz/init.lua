M.setup = function(opts)
	opts = opts or {}

	-- Wczytaj kolory i grupy highlight
	local colors = require("chillz.colors").palette
	local highlights = require("chillz.groups.syntax").setup(colors)
	local alpha_integration = require("chillz.groups.integrations.alpha").setup(colors)

	-- Zastosuj highlighty
	for group, settings in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, settings)
	end

	-- Zastosuj integracje z alpha-nvim
	for group, settings in pairs(alpha_integration) do
		vim.api.nvim_set_hl(0, group, settings)
	end

	-- Zastosuj opcje konfiguracyjne (opcjonalnie)
	require("chillz.config").apply(opts)
	require("chillz.groups.integrations.treesitter")

	config.apply_transparency()
end
