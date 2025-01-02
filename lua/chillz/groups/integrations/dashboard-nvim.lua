local M = {}

M.setup = function(colors)
	return {
		DashboardHeader = { fg = colors.mint_blue }, -- Kolor nagłówka
		DashboardCenter = { fg = colors.green }, -- Kolor przycisków w centrum
		DashboardShortcut = { fg = colors.green }, -- Kolor skrótów
		DashboardFooter = { fg = colors.blue, italic = true }, -- Kolor stopki
		DashboardDesc = { fg = colors.green },
		DashboardShortcutName = { fg = colors.ice_blue },
		DashboardIcon = { fg = colors.green, bold = true },
	}
end

return M
