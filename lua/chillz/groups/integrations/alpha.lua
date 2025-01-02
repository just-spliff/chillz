local M = {}

M.setup = function(colors)
	return {
		-- Define highlight groups for alpha dashboard
		AlphaShortcut = { fg = colors.green }, -- Bright green for shortcuts
		AlphaHeader = { fg = colors.mint_blue }, -- Primary mint blue for headers
		AlphaHeaderLabel = { fg = colors.teal }, -- Teal for header labels
		AlphaButtons = { fg = colors.blue }, -- Bright blue for buttons
		AlphaFooter = { fg = colors.cyan, italic = true }, -- Cyan for footer with italic style
	}
end

return M
