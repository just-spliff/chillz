local colors = require("chillz.colors").palette

local M = {}

function M.setup()
	return {
		AlphaHeader = { fg = colors.mint_blue, style = "bold" },
		AlphaButtons = { fg = colors.blue_dim, style = "italic" },
		AlphaShortcut = { fg = colors.teal, style = "bold" },
		AlphaFooter = { fg = colors.green, style = "italic" },
	}
end

return M
