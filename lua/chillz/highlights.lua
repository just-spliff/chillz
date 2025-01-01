local M = {}

local config = require("chillz.config")

M.setup = function(colors)
	local bg_color = config.transparent and "NONE" or colors.bg

	return {
		-- Background and text
		Normal = { fg = colors.fg, bg = bg_color },
		Comment = { fg = colors.frosted_steel, italic = true },
		CursorLine = { bg = colors.highlight_glow },
		CursorLineNr = { fg = colors.polar_blue, bold = true },
		LineNr = { fg = colors.frosted_steel },
		Visual = { bg = colors.bg_alt },

		-- Accents
		Identifier = { fg = colors.polar_blue },
		Function = { fg = colors.aurora_sky, bold = true },
		Keyword = { fg = colors.icy_cyan, italic = true },
		String = { fg = colors.bright_ice },
		Constant = { fg = colors.seafoam_green },
		Type = { fg = colors.frozen_purple },
		Special = { fg = colors.winter_rose },
		WarningMsg = { fg = colors.chilled_pink, bold = true },
		ErrorMsg = { fg = colors.frozen_purple, bold = true },

		-- Statusline and other UI elements
		StatusLine = { fg = colors.fg, bg = colors.bg_alt },
		StatusLineNC = { fg = colors.frosted_steel, bg = colors.frost_shadow },
		Pmenu = { fg = colors.fg, bg = colors.bg_alt },
		PmenuSel = { fg = colors.bg, bg = colors.polar_blue },
		TabLine = { fg = colors.frosted_steel, bg = colors.frost_shadow },
		TabLineSel = { fg = colors.fg, bg = colors.bg_alt },

		-- Diff highlighting (gradients)
		DiffAdd = { fg = colors.seafoam_green },
		DiffChange = { fg = colors.polar_blue },
		DiffDelete = { fg = colors.chilled_pink },
		DiffText = { fg = colors.aurora_sky },
	}
end

return M
