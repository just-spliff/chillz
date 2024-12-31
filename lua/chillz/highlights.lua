local M = {}

M.setup = function(colors)
	return {
		Normal = { fg = colors.fg, bg = colors.bg },
		NormalFloat = { fg = colors.fg_alt, bg = colors.bg_alt },
		Comment = { fg = colors.gray, gui = "italic" }, -- Zamiast "style", używamy "gui" (italic, bold, underline)
		Keyword = { fg = colors.main, gui = "bold" },
		Function = { fg = colors.accent, gui = "bold" },
		String = { fg = colors.success },
		Error = { fg = colors.error, gui = "bold" },
		Warning = { fg = colors.warning },
		Info = { fg = colors.info },
		Highlight = { fg = colors.highlight, bg = colors.bg_alt },
	}
end

return M
