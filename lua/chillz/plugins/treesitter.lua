local colors = require("chillz.colors").palette

local M = {}

function M.setup()
	return {
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
	}
end

return M
