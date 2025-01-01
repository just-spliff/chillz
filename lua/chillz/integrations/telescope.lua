-- ~/.config/nvim/lua/chillz/integrations/telescope.lua
local telescope = require("telescope")
local actions = require("telescope.actions")
local colors = require("chillz.colors")

telescope.setup({
	defaults = {
		prompt_prefix = " ",
		selection_caret = " ",
		entry_prefix = "  ",
		initial_mode = "insert",
		sorting_strategy = "ascending",
		layout_strategy = "horizontal", -- Układ poziomy
		layout_config = {
			prompt_position = "top", -- Pozycja paska wejściowego
			width = 0.8, -- Szerokość okna
		},
		winblend = 10, -- Przezroczystość okna
		color_devicons = true, -- Kolory ikon
		mappings = {
			i = {
				["<Esc>"] = actions.close,
			},
		},
		path_display = { "smart" },
	},
	pickers = {
		find_files = {
			theme = "dropdown",
			previewer = false,
		},
		live_grep = {
			theme = "dropdown",
			previewer = false,
		},
		buffers = {
			theme = "dropdown",
			previewer = false,
		},
	},
	extensions = {
		fzf = {
			fuzzy = true,
		},
	},
})

-- Włącz rozszerzenie fzf
telescope.load_extension("fzf")

-- Ustawienie kolorów dla Telescope
vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = colors.bg, fg = colors.fg }) -- Tło i tekst
vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = colors.bg_alt, fg = colors.fg }) -- Tło paska wejściowego
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = colors.bg_alt, fg = colors.bg_alt }) -- Obramowanie paska wejściowego
vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = colors.bg_highlight, fg = colors.fg }) -- Tło podglądu
vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = colors.bg_highlight, fg = colors.bg_highlight }) -- Obramowanie podglądu
vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = colors.bg, fg = colors.fg }) -- Tło wyników
vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = colors.bg, fg = colors.bg }) -- Obramowanie wyników
vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = colors.mint_blue, fg = colors.bg }) -- Wyróżniony wynik
vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = colors.success }) -- Wskaźnik na wyróżniony wynik
vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = colors.cyan, bold = true }) -- Dopasowane części tekstu
