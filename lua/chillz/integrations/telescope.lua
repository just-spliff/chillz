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
		layout_strategy = "horizontal",
		layout_config = {
			preview_width = 0.6,
			prompt_position = "top",
		},
		color_devicons = true,
		mappings = {
			i = {
				["<Esc>"] = actions.close,
			},
		},
		path_display = { "smart" },
		winblend = 10, -- Przezroczystość okna
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
