local colors = require("chillz.colors").palette

local M = {}

function M.setup()
	return {
		-- Podstawowe grupy UI
		Normal = { fg = colors.fg, bg = colors.bg },
		NormalNC = { fg = colors.fg_dim, bg = colors.bg },
		CursorLine = { bg = colors.bg_highlight },
		Visual = { bg = colors.bg_alt },
		LineNr = { fg = colors.fg_gutter },
		CursorLineNr = { fg = colors.mint_blue, style = "bold" },
		StatusLine = { fg = colors.fg, bg = colors.bg_alt },
		StatusLineNC = { fg = colors.fg_dim, bg = colors.bg_dim },
		Pmenu = { fg = colors.fg, bg = colors.bg_dark },
		PmenuSel = { fg = colors.bg, bg = colors.mint_blue },
		PmenuThumb = { bg = colors.fg_dim },
		WinSeparator = { fg = colors.bg_highlight },

		-- Fallbackowe grupy składni
		Comment = { fg = colors.comment, style = "italic" },
		Constant = { fg = colors.blue_light },
		String = { fg = colors.green },
		Character = { fg = colors.teal },
		Number = { fg = colors.blue_dim },
		Boolean = { fg = colors.mint_blue_dark, style = "bold" },
		Float = { fg = colors.cyan },
		Identifier = { fg = colors.fg },
		Function = { fg = colors.teal, style = "italic" },
		Statement = { fg = colors.purple_dark },
		Conditional = { fg = colors.purple, style = "bold" },
		Repeat = { fg = colors.purple },
		Label = { fg = colors.cyan },
		Operator = { fg = colors.fg_dark },
		Keyword = { fg = colors.purple, style = "bold" },
		Exception = { fg = colors.magenta },

		-- Typy
		PreProc = { fg = colors.blue },
		Include = { fg = colors.mint_blue },
		Define = { fg = colors.cyan },
		Title = { fg = colors.mint_blue, style = "bold" },
		Type = { fg = colors.teal, style = "bold" },
		StorageClass = { fg = colors.purple_dark },
		Structure = { fg = colors.purple },
		Typedef = { fg = colors.mint_blue_dark },

		-- Podświetlenie błędów i ostrzeżeń
		Error = { fg = colors.magenta, bg = colors.bg, style = "bold" },
		Warning = { fg = colors.yellow, style = "italic" },
		Info = { fg = colors.mint_blue },
		Hint = { fg = colors.green },

		-- Podświetlenie wyszukiwania
		Search = { fg = colors.bg, bg = colors.mint_blue },
		IncSearch = { fg = colors.bg, bg = colors.teal },
		WildMenu = { fg = colors.fg, bg = colors.bg_highlight },
	}
end

return M
