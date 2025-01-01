local M = {}

local config = require("chillz.config")

M.setup = function(colors)
	local bg_color = config.transparent and "NONE" or colors.bg

	return {
		-- Tło i tekst
		Normal = { fg = colors.fg, bg = bg_color },
		Comment = { fg = colors.fg_dim, italic = true },
		CursorLine = { bg = colors.bg_highlight },
		CursorLineNr = { fg = colors.mint_blue, bold = true },
		LineNr = { fg = colors.fg_dim },
		Visual = { bg = colors.bg_alt },

		-- Akcenty
		Identifier = { fg = colors.mint_blue },
		Function = { fg = colors.ice_blue, bold = true },
		Keyword = { fg = colors.cyan, italic = true },
		String = { fg = colors.success },
		Constant = { fg = colors.frost_green },
		Type = { fg = colors.deep_blue },
		Special = { fg = colors.purple },
		WarningMsg = { fg = colors.warning, bold = true },
		ErrorMsg = { fg = colors.error, bold = true },

		-- Statusline i inne
		StatusLine = { fg = colors.fg, bg = colors.bg_alt },
		StatusLineNC = { fg = colors.fg_dim, bg = colors.bg_dim },
		Pmenu = { fg = colors.fg, bg = colors.bg_alt },
		PmenuSel = { fg = colors.bg, bg = colors.mint_blue },
		TabLine = { fg = colors.fg_dim, bg = colors.bg_dim },
		TabLineSel = { fg = colors.fg, bg = colors.bg_alt },

		-- Gradient
		DiffAdd = { fg = colors.gradient_start },
		DiffChange = { fg = colors.gradient_mid },
		DiffDelete = { fg = colors.error },
		DiffText = { fg = colors.gradient_end },
	}
end

return M
