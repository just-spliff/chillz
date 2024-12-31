local M = {}

local config = require("chillz.config")

M.setup = function(colors)
	local bg = config.transparent and "NONE" or colors.bg
	local bg_alt = config.transparent and "NONE" or colors.bg_alt

	return {
		Normal = { fg = colors.fg, bg = bg },
		NormalFloat = { fg = colors.fg_alt, bg = bg_alt },
		Comment = { fg = colors.gray, italic = true },
		Keyword = { fg = colors.keyword, bold = true },
		Function = { fg = colors.function_name, bold = true },
		Variable = { fg = colors.variable },
		String = { fg = colors.string },
		Constant = { fg = colors.constant },
		Operator = { fg = colors.operator },
		Type = { fg = colors.type },

		-- Treesitter
		["@keyword"] = { fg = colors.keyword, bold = true },
		["@function"] = { fg = colors.function_name, bold = true },
		["@variable"] = { fg = colors.variable },
		["@string"] = { fg = colors.string },
		["@constant"] = { fg = colors.constant },
		["@operator"] = { fg = colors.operator },
		["@type"] = { fg = colors.type },

		-- LSP Semantic Highlighting
		LspReferenceText = { bg = colors.highlight },
		LspReferenceRead = { bg = colors.highlight },
		LspReferenceWrite = { bg = colors.highlight },
		DiagnosticError = { fg = colors.error },
		DiagnosticWarn = { fg = colors.warning },
		DiagnosticInfo = { fg = colors.info },
		DiagnosticHint = { fg = colors.success },
	}
end

return M
