local M = {}
local colors = require("chillz.colors").palette

M.setup = function()
	return {
		Normal = { fg = colors.fg, bg = colors.bg },
		Comment = { fg = colors.accent, style = "italic" },
		Error = { fg = colors.error, style = "bold" },
		Warning = { fg = colors.warning },
		-- Dodaj więcej grup highlightów
	}
end

return M
