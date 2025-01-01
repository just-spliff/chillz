local M = {}

local config = require("chillz.config")

M.setup = function(colors)
	local bg_color = config.transparent and "NONE" or colors.bg

	return {
		-- Background and text
		Normal = { fg = colors.fg, bg = bg_color },
		Comment = { fg = colors.frosted_steel, italic = true },
		CursorLine = { bg = colors.highlight_glow },
		CursorLineNr = { fg = colors.polar_blue, bold = true },
		LineNr = { fg = colors.frosted_steel },
		Visual = { bg = colors.bg_alt },

		-- Syntax
		Identifier = { fg = colors.polar_blue },
		Function = { fg = colors.aurora_sky, bold = true },
		Keyword = { fg = colors.icy_cyan, italic = true },
		String = { fg = colors.bright_ice },
		Constant = { fg = colors.seafoam_green },
		Type = { fg = colors.frozen_purple },
		Special = { fg = colors.winter_rose },
		WarningMsg = { fg = colors.chilled_pink, bold = true },
		ErrorMsg = { fg = colors.frozen_purple, bold = true },

		-- Statusline and other UI elements
		StatusLine = { fg = colors.fg, bg = colors.bg_alt },
		StatusLineNC = { fg = colors.frosted_steel, bg = colors.frost_shadow },
		Pmenu = { fg = colors.fg, bg = colors.bg_alt },
		PmenuSel = { fg = colors.bg, bg = colors.polar_blue },
		TabLine = { fg = colors.frosted_steel, bg = colors.frost_shadow },
		TabLineSel = { fg = colors.fg, bg = colors.bg_alt },

		-- Diff highlighting (gradients)
		DiffAdd = { fg = colors.seafoam_green },
		DiffChange = { fg = colors.polar_blue },
		DiffDelete = { fg = colors.chilled_pink },
		DiffText = { fg = colors.aurora_sky },

		-- Tree-sitter highlights
		["@comment"] = { fg = colors.frosted_steel, italic = true }, -- Comments
		["@punctuation"] = { fg = colors.fg }, -- Punctuation
		["@constant"] = { fg = colors.seafoam_green }, -- Constants
		["@constant.builtin"] = { fg = colors.bright_ice }, -- Built-in constants
		["@constant.macro"] = { fg = colors.frozen_purple }, -- Macros
		["@string"] = { fg = colors.bright_ice }, -- Strings
		["@string.escape"] = { fg = colors.winter_rose, bold = true }, -- Escape sequences
		["@character"] = { fg = colors.bright_ice }, -- Characters
		["@number"] = { fg = colors.seafoam_green }, -- Numbers
		["@boolean"] = { fg = colors.polar_blue }, -- Booleans
		["@float"] = { fg = colors.seafoam_green }, -- Floating-point numbers

		["@function"] = { fg = colors.aurora_sky, bold = true }, -- Functions
		["@function.call"] = { fg = colors.aurora_sky }, -- Function calls
		["@function.builtin"] = { fg = colors.icy_cyan }, -- Built-in functions
		["@function.macro"] = { fg = colors.frozen_purple }, -- Macro functions
		["@parameter"] = { fg = colors.fg }, -- Parameters

		["@keyword"] = { fg = colors.icy_cyan, italic = true }, -- Keywords
		["@keyword.function"] = { fg = colors.icy_cyan, italic = true }, -- Keywords in functions
		["@keyword.operator"] = { fg = colors.polar_blue }, -- Operators
		["@keyword.return"] = { fg = colors.icy_cyan, bold = true }, -- Return keywords

		["@type"] = { fg = colors.frozen_purple }, -- Types
		["@type.builtin"] = { fg = colors.polar_blue }, -- Built-in types
		["@type.qualifier"] = { fg = colors.frosted_steel }, -- Type qualifiers (e.g., `const`)

		["@namespace"] = { fg = colors.fg_dim }, -- Namespaces
		["@symbol"] = { fg = colors.fg }, -- Symbols

		["@field"] = { fg = colors.fg }, -- Fields
		["@property"] = { fg = colors.fg }, -- Properties

		["@variable"] = { fg = colors.fg }, -- Variables
		["@variable.builtin"] = { fg = colors.frosted_steel }, -- Built-in variables

		["@text"] = { fg = colors.fg }, -- Text
		["@text.strong"] = { fg = colors.fg, bold = true }, -- Bold text
		["@text.emphasis"] = { fg = colors.fg, italic = true }, -- Italic text
		["@text.underline"] = { fg = colors.fg, underline = true }, -- Underlined text
		["@text.strike"] = { fg = colors.fg, strikethrough = true }, -- Strikethrough text
		["@text.title"] = { fg = colors.fg, bold = true }, -- Titles
		["@text.literal"] = { fg = colors.bright_ice }, -- Literal text
		["@text.uri"] = { fg = colors.polar_blue, underline = true }, -- URIs
		["@text.math"] = { fg = colors.frozen_purple }, -- Math text

		["@tag"] = { fg = colors.polar_blue }, -- Tags
		["@tag.attribute"] = { fg = colors.frosted_steel }, -- Tag attributes
		["@tag.delimiter"] = { fg = colors.fg_dim }, -- Tag delimiters
	}
end

return M
