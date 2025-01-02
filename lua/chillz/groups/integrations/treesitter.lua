local colors = require("chillz.colors").palette

local M = {}

function M.setup()
	return {
		-- Keywords
		["@keyword"] = { fg = colors.purple, bold = true },
		["@keyword.return"] = { fg = colors.purple_dark, bold = true },
		["@keyword.function"] = { fg = colors.purple_dark, bold = true },
		["@keyword.operator"] = { fg = colors.purple, bold = true },

		-- Conditional statements
		["@conditional"] = { fg = colors.blue_dark },
		["@conditional.if"] = { fg = colors.blue_light },
		["@conditional.else"] = { fg = colors.green_dark },

		-- Loops
		["@loop"] = { fg = colors.cyan },
		["@loop.for"] = { fg = colors.blue_dark },
		["@loop.while"] = { fg = colors.green_dark },

		-- Strings
		["@string"] = { fg = colors.green },
		["@string.escape"] = { fg = colors.mint_blue, bold = true },
		["@string.regex"] = { fg = colors.teal },

		-- Functions
		["@function"] = { fg = colors.blue, bold = true },
		["@function.call"] = { fg = colors.blue_light },
		["@function.builtin"] = { fg = colors.mint_blue_dark },

		-- Methods
		["@method"] = { fg = colors.cyan },
		["@method.call"] = { fg = colors.blue_dim },

		-- Constants
		["@constant"] = { fg = colors.teal },
		["@constant.builtin"] = { fg = colors.green_dark },
		["@constant.macro"] = { fg = colors.yellow },

		-- Types
		["@type"] = { fg = colors.mint_blue_dark },
		["@type.builtin"] = { fg = colors.blue_light },
		["@type.class"] = { fg = colors.purple_dark },
		["@type.interface"] = { fg = colors.purple },

		-- Variables
		["@variable"] = { fg = colors.fg },
		["@variable.local"] = { fg = colors.blue_dark },
		["@variable.global"] = { fg = colors.teal },
		["@variable.parameter"] = { fg = colors.green },

		-- Properties & Fields
		["@property"] = { fg = colors.fg_dark, italic = true },
		["@field"] = { fg = colors.cyan, italic = true },

		-- Numbers
		["@number"] = { fg = colors.yellow },
		["@number.float"] = { fg = colors.mint_blue },
		["@number.integer"] = { fg = colors.green_dark },

		-- Tags (React)
		["@tag"] = { fg = colors.mint_blue, bold = true }, -- tag name, e.g. <div>
		["@tag.delimiter"] = { fg = colors.blue_light }, -- tag delimiters, e.g. < and >

		-- Atrybuty tagów
		["@tag.attribute"] = { fg = colors.blue_dark }, -- tag attributes like className, etc.

		-- className (TSX)
		["@tag.attribute.className"] = { fg = colors.teal, italic = true }, -- specific color for className
		["@tag.attribute.id"] = { fg = colors.green_dark }, -- specific color for id attributes

		-- Atrybuty wartości
		["@attribute"] = { fg = colors.blue_dim },

		-- Namespace
		["@namespace"] = { fg = colors.purple },

		-- Operators
		["@operator"] = { fg = colors.green_dark },

		-- Comments
		["@comment"] = { fg = colors.comment, italic = true },
		["@comment.line"] = { fg = colors.comment, italic = true },
		["@comment.block"] = { fg = colors.comment, italic = true },

		-- Punctuation
		["@punctuation"] = { fg = colors.fg_dark },
		["@punctuation.bracket"] = { fg = colors.blue_dim },
		["@punctuation.delimiter"] = { fg = colors.blue_dark },
		["@punctuation.separator"] = { fg = colors.teal },

		-- Identifiers (class, function, method)
		["@identifier"] = { fg = colors.blue_light, italic = true },
		["@identifier.class"] = { fg = colors.purple_dark },
		["@identifier.function"] = { fg = colors.blue, italic = true },
		["@identifier.method"] = { fg = colors.cyan, italic = true },

		-- Special
		["@special"] = { fg = colors.yellow, italic = true },
		["@special.function"] = { fg = colors.mint_blue_dark, italic = true },

		-- TypeScript specific keywords
		["@type.qualifier"] = { fg = colors.blue_light }, -- TypeScript-specific qualifiers (e.g., `readonly`)
		["@variable.ts"] = { fg = colors.green_dark }, -- For TypeScript variables}
	}
end

return M
