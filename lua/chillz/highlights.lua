local M = {}

local config = require("chillz.config")

M.setup = function(colors)
	local bg_color = config.transparent and "NONE" or colors.bg

	return {
		-- Background and text
		Normal = { fg = colors.fg, bg = bg_color },
		Comment = { fg = colors.comment, italic = true },
		CursorLine = { bg = colors.bg_highlight },
		CursorLineNr = { fg = colors.mint_blue, bold = true },
		LineNr = { fg = colors.fg_dim },
		Visual = { bg = colors.bg_alt },
		VisualNOS = { bg = colors.bg_dim },
		NormalFloat = { bg = colors.bg_alt },
		FloatBorder = { fg = colors.fg_dim, bg = colors.bg_alt },

		-- Syntax Highlights
		Identifier = { fg = colors.mint_blue },
		Function = { fg = colors.ice_blue, bold = true },
		Keyword = { fg = colors.cyan, italic = true },
		String = { fg = colors.green },
		Constant = { fg = colors.teal },
		Type = { fg = colors.purple },
		Structure = { fg = colors.blue_dark },
		StorageClass = { fg = colors.orange },
		Operator = { fg = colors.blue_light },
		Character = { fg = colors.green_dark },
		Number = { fg = colors.orange },
		Boolean = { fg = colors.orange, bold = true },
		Float = { fg = colors.yellow },

		-- Tree-sitter Highlights
		["@variable"] = { fg = colors.fg }, -- Domyślne dla zmiennych
		["@variable.global"] = { fg = colors.teal, bold = true }, -- Globalne zmienne
		["@field"] = { fg = colors.blue }, -- Właściwości obiektu (np. `data` w `expenses.data`)
		["@property"] = { fg = colors.blue_light }, -- Alternatywne właściwości
		["@function"] = { fg = colors.ice_blue, bold = true },
		["@function.call"] = { fg = colors.mint_blue },
		["@function.builtin"] = { fg = colors.cyan },
		["@parameter"] = { fg = colors.green_dark }, -- Argumenty funkcji
		["@keyword"] = { fg = colors.cyan, italic = true },
		["@keyword.function"] = { fg = colors.blue, italic = true },
		["@type"] = { fg = colors.purple },
		["@type.builtin"] = { fg = colors.blue },
		["@constant"] = { fg = colors.teal },
		["@constant.builtin"] = { fg = colors.green_dark },
		["@constant.macro"] = { fg = colors.blue_dark },

		-- Diagnostics
		DiagnosticError = { fg = colors.orange },
		DiagnosticWarn = { fg = colors.yellow },
		DiagnosticInfo = { fg = colors.blue },
		DiagnosticHint = { fg = colors.cyan },
		DiagnosticUnderlineError = { undercurl = true, sp = colors.orange },
		DiagnosticUnderlineWarn = { undercurl = true, sp = colors.yellow },
		DiagnosticUnderlineInfo = { undercurl = true, sp = colors.blue },
		DiagnosticUnderlineHint = { undercurl = true, sp = colors.cyan },
	}
end

return M
