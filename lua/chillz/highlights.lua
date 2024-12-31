local M = {}
local colors = require("chillz.colors").palette

M.setup = function()
	return {
		Normal = { fg = colors.fg, bg = colors.bg },
		NormalFloat = { fg = colors.fg_alt, bg = colors.bg_alt },
		Comment = { fg = colors.gray, style = "italic" },
		Identifier = { fg = colors.main },
		Statement = { fg = colors.main, style = "bold" },
		Keyword = { fg = colors.accent },
		Function = { fg = colors.main, style = "bold" },
		String = { fg = colors.success },
		Error = { fg = colors.error, style = "bold" },
		Warning = { fg = colors.warning },
		Info = { fg = colors.info },
		Highlight = { fg = colors.highlight, bg = colors.bg_alt },
	}
end

return M
