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
		Search = { bg = colors.blue_dim, fg = colors.bg },
		IncSearch = { bg = colors.mint_blue_dark, fg = colors.bg },
		MatchParen = { fg = colors.blue, underline = true },
		ColorColumn = { bg = colors.bg_dim },

		-- Syntax Highlights
		Identifier = { fg = colors.mint_blue },
		Function = { fg = colors.ice_blue, bold = true },
		Keyword = { fg = colors.cyan, italic = true },
		String = { fg = colors.green },
		Constant = { fg = colors.teal },
		Type = { fg = colors.purple },
		Structure = { fg = colors.blue_dark },
		StorageClass = { fg = colors.red },
		Operator = { fg = colors.blue_light },
		Character = { fg = colors.green_dark },
		Number = { fg = colors.orange },
		Boolean = { fg = colors.red_dark, bold = true },
		Float = { fg = colors.yellow },

		-- UI Highlights
		StatusLine = { fg = colors.fg, bg = colors.bg_dark },
		StatusLineNC = { fg = colors.fg_dim, bg = colors.bg_dark },
		Pmenu = { fg = colors.fg, bg = colors.bg_alt },
		PmenuSel = { fg = colors.bg, bg = colors.mint_blue },
		TabLine = { fg = colors.comment, bg = colors.bg_dim },
		TabLineSel = { fg = colors.fg, bg = colors.bg_alt },
		TabLineFill = { bg = colors.bg },

		-- Diagnostics
		DiagnosticError = { fg = colors.red },
		DiagnosticWarn = { fg = colors.yellow },
		DiagnosticInfo = { fg = colors.blue },
		DiagnosticHint = { fg = colors.cyan },
		DiagnosticUnderlineError = { undercurl = true, sp = colors.red },
		DiagnosticUnderlineWarn = { undercurl = true, sp = colors.yellow },
		DiagnosticUnderlineInfo = { undercurl = true, sp = colors.blue },
		DiagnosticUnderlineHint = { undercurl = true, sp = colors.cyan },

		-- Tree-sitter Highlights
		["@comment"] = { fg = colors.comment, italic = true },
		["@punctuation"] = { fg = colors.fg_dim },
		["@constant"] = { fg = colors.teal },
		["@constant.builtin"] = { fg = colors.green_dark },
		["@constant.macro"] = { fg = colors.blue_dark },
		["@string"] = { fg = colors.green },
		["@string.escape"] = { fg = colors.purple, bold = true },
		["@character"] = { fg = colors.green_dark },
		["@number"] = { fg = colors.orange },
		["@boolean"] = { fg = colors.red_dark, bold = true },
		["@float"] = { fg = colors.yellow },
		["@type"] = { fg = colors.purple },
		["@type.builtin"] = { fg = colors.blue },
		["@function"] = { fg = colors.ice_blue, bold = true },
		["@function.call"] = { fg = colors.mint_blue },
		["@function.builtin"] = { fg = colors.cyan },
		["@function.macro"] = { fg = colors.purple },
		["@parameter"] = { fg = colors.fg_dim },
		["@keyword"] = { fg = colors.cyan, italic = true },
		["@keyword.function"] = { fg = colors.blue, italic = true },
		["@keyword.operator"] = { fg = colors.blue_light },
		["@variable"] = { fg = colors.fg },
		["@variable.builtin"] = { fg = colors.fg_dim },

		-- Diff Highlights
		DiffAdd = { fg = colors.green, bg = colors.bg_dim },
		DiffChange = { fg = colors.blue_dark, bg = colors.bg_dim },
		DiffDelete = { fg = colors.red, bg = colors.bg_dim },
		DiffText = { fg = colors.blue, bg = colors.bg_dim },

		-- LSP-related
		LspReferenceText = { bg = colors.bg_highlight },
		LspReferenceRead = { bg = colors.bg_highlight },
		LspReferenceWrite = { bg = colors.bg_highlight, bold = true },
	}
end

return M
