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

		-- Syntax Highlights
		Identifier = { fg = colors.mint_blue },
		Function = { fg = colors.ice_blue, bold = true },
		Keyword = { fg = colors.cyan, italic = true },
		String = { fg = colors.green },
		Constant = { fg = colors.teal },
		Type = { fg = colors.purple },
		Structure = { fg = colors.blue_dark },
		StorageClass = { fg = colors.orange },
		Operator = { fg = colors.blue_light },
		Character = { fg = colors.green_dark },
		Number = { fg = colors.orange },
		Boolean = { fg = colors.orange, bold = true },
		Float = { fg = colors.yellow },

		-- Extended Tree-sitter Highlights
		["@namespace"] = { fg = colors.blue_light }, -- Namespaces
		["@function"] = { fg = colors.ice_blue, bold = true }, -- Functions
		["@function.call"] = { fg = colors.mint_blue }, -- Function calls
		["@function.builtin"] = { fg = colors.cyan }, -- Built-in functions
		["@method"] = { fg = colors.ice_blue }, -- Methods (object-oriented functions)
		["@method.call"] = { fg = colors.blue_light }, -- Method calls
		["@field"] = { fg = colors.blue }, -- Object fields
		["@property"] = { fg = colors.blue_light }, -- Object properties
		["@constructor"] = { fg = colors.yellow }, -- Constructors
		["@parameter"] = { fg = colors.green_dark }, -- Function parameters
		["@variable"] = { fg = colors.fg }, -- Local variables
		["@variable.builtin"] = { fg = colors.teal, italic = true }, -- Built-in variables (e.g., `this`, `self`)
		["@constant"] = { fg = colors.teal }, -- Constants
		["@constant.builtin"] = { fg = colors.green_dark }, -- Built-in constants
		["@constant.macro"] = { fg = colors.blue_dark }, -- Macros

		["@type"] = { fg = colors.purple }, -- Types
		["@type.definition"] = { fg = colors.blue }, -- Type definitions
		["@type.qualifier"] = { fg = colors.cyan }, -- Type qualifiers (e.g., `const`, `mutable`)

		["@string"] = { fg = colors.green }, -- Strings
		["@string.regex"] = { fg = colors.blue_light }, -- Regular expressions
		["@string.escape"] = { fg = colors.purple, bold = true }, -- String escape sequences

		["@number"] = { fg = colors.orange }, -- Numbers
		["@boolean"] = { fg = colors.orange, bold = true }, -- Booleans
		["@float"] = { fg = colors.yellow }, -- Floating-point numbers

		["@operator"] = { fg = colors.blue_light }, -- Operators (e.g., `+`, `-`, `=`)

		["@keyword"] = { fg = colors.cyan, italic = true }, -- Keywords (e.g., `if`, `else`)
		["@keyword.function"] = { fg = colors.blue, italic = true }, -- Keywords for functions
		["@keyword.operator"] = { fg = colors.blue_light }, -- Operator keywords (e.g., `and`, `or`)
		["@keyword.return"] = { fg = colors.yellow, bold = true }, -- Return keywords

		["@punctuation"] = { fg = colors.fg_dim }, -- General punctuation
		["@punctuation.delimiter"] = { fg = colors.fg_dim }, -- Delimiters (e.g., `{`, `}`)
		["@punctuation.bracket"] = { fg = colors.teal }, -- Brackets (e.g., `()`, `[]`)
		["@punctuation.special"] = { fg = colors.blue_light }, -- Special punctuation (e.g., `#`, `@`)

		["@tag"] = { fg = colors.blue }, -- Tags (e.g., HTML tags)
		["@tag.attribute"] = { fg = colors.green }, -- Tag attributes
		["@tag.delimiter"] = { fg = colors.fg_dim }, -- Tag delimiters (e.g., `<`, `>`)

		["@text"] = { fg = colors.fg }, -- Plain text
		["@text.strong"] = { fg = colors.fg, bold = true }, -- Bold text
		["@text.emphasis"] = { fg = colors.comment, italic = true }, -- Emphasized text
		["@text.underline"] = { underline = true }, -- Underlined text
		["@text.strike"] = { strikethrough = true }, -- Strikethrough text
		["@text.title"] = { fg = colors.blue_light, bold = true }, -- Titles
		["@text.literal"] = { fg = colors.green_dark }, -- Literal text (e.g., inline code)
		["@text.uri"] = { fg = colors.blue_light, underline = true }, -- URIs
		["@text.math"] = { fg = colors.purple }, -- Math text (e.g., LaTeX)
		["@text.reference"] = { fg = colors.blue_dark }, -- References (e.g., footnotes)

		["@text.environment"] = { fg = colors.yellow }, -- Environments (e.g., LaTeX environments)
		["@text.environment.name"] = { fg = colors.teal }, -- Environment names

		["@attribute"] = { fg = colors.green_dark }, -- Attributes (e.g., `#[derive(Debug)]`)
		["@directive"] = { fg = colors.cyan }, -- Directives (e.g., `#include`)

		-- Diagnostics
		DiagnosticError = { fg = colors.orange },
		DiagnosticWarn = { fg = colors.yellow },
		DiagnosticInfo = { fg = colors.blue },
		DiagnosticHint = { fg = colors.cyan },
		DiagnosticUnderlineError = { undercurl = true, sp = colors.orange },
		DiagnosticUnderlineWarn = { undercurl = true, sp = colors.yellow },
		DiagnosticUnderlineInfo = { undercurl = true, sp = colors.blue },
		DiagnosticUnderlineHint = { undercurl = true, sp = colors.cyan },
	}
end

return M
