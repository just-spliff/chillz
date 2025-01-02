local M = {}

M.setup = function(colors)
	return {
		DashboardHeader = { fg = colors.mint_blue }, -- Kolor nagłówka
		DashboardCenter = { fg = colors.green }, -- Kolor przycisków w centrum
		DashboardShortcut = { fg = colors.teal }, -- Kolor skrótów
		DashboardFooter = { fg = colors.blue, style = { "italic" } }, -- Kolor stopki
	}
end

return M
