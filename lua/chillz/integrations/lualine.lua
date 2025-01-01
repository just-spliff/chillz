-- ~/.config/nvim/lua/chillz/integrations/lualine.lua
local lualine = require("lualine")
local colors = require("chillz.colors")

lualine.setup({
	options = {
		theme = {
			normal = {
				c = { fg = colors.fg, bg = colors.bg },
				b = { fg = colors.fg, bg = colors.bg_alt },
				a = { fg = colors.bg, bg = colors.mint_blue, gui = "bold" },
			},
			insert = {
				c = { fg = colors.fg, bg = colors.bg },
				b = { fg = colors.fg, bg = colors.bg_alt },
				a = { fg = colors.bg, bg = colors.success, gui = "bold" },
			},
			visual = {
				c = { fg = colors.fg, bg = colors.bg },
				b = { fg = colors.fg, bg = colors.bg_alt },
				a = { fg = colors.bg, bg = colors.warning, gui = "bold" },
			},
			replace = {
				c = { fg = colors.fg, bg = colors.bg },
				b = { fg = colors.fg, bg = colors.bg_alt },
				a = { fg = colors.bg, bg = colors.error, gui = "bold" },
			},
		},
		section_separators = { "", "" },
		component_separators = { "", "" },
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { "filename", "filetype" },
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch" },
		lualine_c = { "filename" },
		lualine_x = { "filetype" },
		lualine_y = {},
		lualine_z = {},
	},
})
