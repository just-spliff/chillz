local M = {}

M.setup = function(colors)
	return {
		-- Dashboard Header
		AlphaHeader = { fg = colors.mint_blue, bold = true },
		AlphaFooter = { fg = colors.comment, italic = true },
		AlphaButtons = { fg = colors.green, bg = colors.bg_highlight },
		AlphaShortcut = { fg = colors.purple_dark, italic = true },
		AlphaHighlight = { fg = colors.teal, bold = true },
		AlphaBorder = { fg = colors.bg_dim, bg = colors.bg },
	}
end

return M
