local M = {}

M.setup = function(colors)
	local opts = M.options

	return {
		Normal = { fg = colors.fg, bg = opts.transparent and "NONE" or colors.bg },
		NormalFloat = { fg = colors.fg_alt, bg = opts.transparent and "NONE" or colors.bg_alt },
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
