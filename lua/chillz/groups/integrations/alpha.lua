local M = {}

function M.get()
	-- Import the palette
	local palette = require("chillz.colors").palette

	return {
		-- Highlight groups for Alpha
		AlphaShortcut = { fg = palette.green }, -- Bright green for shortcuts
		AlphaHeader = { fg = palette.mint_blue }, -- Primary accent for headers
		AlphaHeaderLabel = { fg = palette.teal }, -- Teal for header labels
		AlphaButtons = { fg = palette.blue }, -- Bright blue for buttons
		AlphaFooter = { fg = palette.cyan, style = { "italic" } }, -- Cyan for footer with italic style
	}
end

return M
