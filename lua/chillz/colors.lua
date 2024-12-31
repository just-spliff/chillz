local M = {}

M.palette = {
	-- Główne kolory
	bg = "#0b1724", -- bardzo ciemny granat (tło)
	bg_alt = "#102a42", -- ciemny niebieski (sekundarne tło)
	fg = "#d8eefe", -- jasny, lodowy błękit
	fg_alt = "#b5d6f2", -- pastelowy błękit
	main = "#98fbcb", -- główny kolor (miętowy błękit)
	accent = "#58c4dd", -- jasny błękit
	highlight = "#aef3ff", -- kontrastowy lodowy błękit

	-- Dodatkowe kolory
	error = "#e95678", -- różowo-czerwień
	warning = "#ffd670", -- jasny żółty
	info = "#6acaff", -- subtelny błękit
	success = "#81e3a5", -- pastelowa zieleń
	gray = "#748a98", -- neutralny szary

	-- Nowe kolory
	keyword = "#aad2e3", -- chłodny błękit (słowa kluczowe)
	variable = "#f4c2c2", -- jasny róż (zmienne)
	function_name = "#8ff0da", -- pastelowy morski (nazwy funkcji)
	string = "#d6f5e0", -- delikatny zielony (ciągi znaków)
	constant = "#ffae57", -- jasny pomarańcz (stałe/liczby)
	operator = "#7ddfff", -- intensywny błękit (operatory)
	type = "#c5a3ff", -- fioletowy (typy danych)
}
return M
