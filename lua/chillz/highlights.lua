local M = {}

local config = require("chillz.config")

M.setup = function(colors)
	local bg = config.transparent and "NONE" or colors.bg
	local bg_alt = config.transparent and "NONE" or colors.bg_alt

	return {
		Normal = { fg = colors.fg, bg = colors.bg },
		NormalFloat = { fg = colors.fg_alt, bg = colors.bg_alt },
		Comment = { fg = colors.gray, italic = true }, -- Użyj "italic" bez "gui"
		Keyword = { fg = colors.main, bold = true }, -- Użyj "bold"
		Function = { fg = colors.accent, bold = true }, -- Użyj "bold"
		String = { fg = colors.success },
		Error = { fg = colors.error, bold = true },
		Warning = { fg = colors.warning },
		Info = { fg = colors.info },
		Highlight = { fg = colors.highlight, bg = colors.bg_alt },
	}
end

return M
