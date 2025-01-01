local M = {}

M.setup = function(colors)
	local bg_color = colors.bg
	local highlights = {
		-- General UI
		Normal = { fg = colors.fg, bg = bg_color },
		Comment = { fg = colors.comment, italic = true },
		CursorLine = { bg = colors.bg_highlight },
		CursorLineNr = { fg = colors.mint_blue, bold = true },
		LineNr = { fg = colors.fg_dim },
		Visual = { bg = colors.bg_alt },
		MatchParen = { bg = colors.bg_highlight, bold = true },
		Pmenu = { fg = colors.fg, bg = colors.bg_alt },
		PmenuSel = { fg = colors.bg, bg = colors.mint_blue_dark },
		StatusLine = { fg = colors.fg, bg = colors.bg_alt },
		StatusLineNC = { fg = colors.fg_dim, bg = colors.bg_dim },
		TabLine = { fg = colors.fg_dim, bg = colors.bg_dim },
		TabLineSel = { fg = colors.fg, bg = colors.bg_alt },
		TabLineFill = { bg = colors.bg_dim },

		["@keyword"] = { fg = colors.purple, bold = true },
		["@keyword.return"] = { fg = colors.purple_dark, bold = true },
		["@string"] = { fg = colors.green },
		["@string.escape"] = { fg = colors.mint_blue, bold = true },
		["@function"] = { fg = colors.blue, bold = true },
		["@function.call"] = { fg = colors.blue_light },
		["@method"] = { fg = colors.cyan },
		["@method.call"] = { fg = colors.blue_dim },
		["@constant"] = { fg = colors.teal },
		["@type"] = { fg = colors.mint_blue_dark },
		["@variable"] = { fg = colors.fg },
		["@property"] = { fg = colors.fg_dark },
		["@field"] = { fg = colors.cyan },
		["@number"] = { fg = colors.yellow },
		["@tag"] = { fg = colors.mint_blue },
		["@tag.attribute"] = { fg = colors.blue_dim },
		["@attribute"] = { fg = colors.blue_dark },
		["@namespace"] = { fg = colors.purple },
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
		GitSignsDelete = { fg = colors.purple_dark },
	}

	return highlights
end

return M
