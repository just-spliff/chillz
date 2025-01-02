local M = {}

M.setup = function(colors)
	return {
		-- General UI
		Normal = { fg = colors.fg, bg = colors.bg },
		Comment = { fg = colors.comment, italic = true },
		CursorLine = { bg = colors.bg_highlight },
		CursorLineNr = { fg = colors.ice_blue, bold = true },
		LineNr = { fg = colors.fg_dim },
		Visual = { bg = colors.bg_alt },
		MatchParen = { bg = colors.bg_highlight, bold = true },
		Pmenu = { fg = colors.fg, bg = colors.bg_alt },
		PmenuSel = { fg = colors.bg, bg = colors.mint_blue_dark },
		StatusLine = { fg = colors.fg, bg = colors.bg_dim },
		StatusLineNC = { fg = colors.fg_dim, bg = colors.bg_dark },
		TabLine = { fg = colors.fg_dim, bg = colors.bg_dark },
		TabLineSel = { fg = colors.fg, bg = colors.bg_alt },
		TabLineFill = { bg = colors.bg_dark },

		-- Diagnostics
		DiagnosticError = { fg = colors.magenta },
		DiagnosticWarn = { fg = colors.purple_dark },
		DiagnosticInfo = { fg = colors.mint_blue_dark },
		DiagnosticHint = { fg = colors.teal },

		-- Diff
		DiffAdd = { fg = colors.green, bg = colors.bg_dim },
		DiffChange = { fg = colors.blue, bg = colors.bg_dim },
		DiffDelete = { fg = colors.purple_dark, bg = colors.bg_dim },
		DiffText = { fg = colors.blue_light, bg = colors.bg_highlight },

		-- Git
		GitSignsAdd = { fg = colors.green },
		GitSignsChange = { fg = colors.blue },
		GitSignsDelete = { fg = colors.magenta_dark },

		-- Syntax
		Constant = { fg = colors.purple },
		String = { fg = colors.green },
		Character = { fg = colors.teal },
		Number = { fg = colors.magenta },
		Boolean = { fg = colors.cyan, bold = true },
		Float = { fg = colors.magenta },
		Identifier = { fg = colors.mint_blue },
		Function = { fg = colors.blue_light },
		Statement = { fg = colors.purple },
		Conditional = { fg = colors.purple_dark },
		Repeat = { fg = colors.purple },
		Label = { fg = colors.mint_blue_dark },
		Operator = { fg = colors.blue },
		Keyword = { fg = colors.magenta_dark },
		Exception = { fg = colors.purple_dark },

		Term = { fg = colors.fg, bg = colors.bg_dark },
		NormalFloat = { bg = colors.bg_alt },

		-- Preprocessor
		PreProc = { fg = colors.yellow },
		Include = { fg = colors.mint_blue },
		Define = { fg = colors.purple_dark },
		Macro = { fg = colors.magenta },
		PreCondit = { fg = colors.mint_blue },

		-- Types
		Type = { fg = colors.teal },
		StorageClass = { fg = colors.blue_light },
		Structure = { fg = colors.blue },
		Typedef = { fg = colors.teal },

		-- Special
		Special = { fg = colors.magenta },
		SpecialChar = { fg = colors.blue },
		Tag = { fg = colors.yellow, bold = true },
		Delimiter = { fg = colors.fg_dim },
		Debug = { fg = colors.comment },

		-- Underline, Bold, Italic
		Underlined = { underline = true },
		Bold = { bold = true },
		Italic = { italic = true },

		-- Errors and Warnings
		Error = { fg = colors.magenta, bold = true },
		Warning = { fg = colors.yellow },

		-- Visual elements
		Todo = { fg = colors.yellow, bg = colors.bg_highlight, bold = true },
		Whitespace = { fg = colors.fg_gutter },
		EndOfBuffer = { fg = colors.bg_dark },

		-- Debugging
		debugPC = { bg = colors.bg_dim },
		debugBreakpoint = { fg = colors.magenta, bg = colors.bg_dark },
	}
end

return M
