local M = {}

M.palette = {
	bg = "#06141a", -- bardzo ciemny morski granat (tło główne)
	bg_alt = "#0b1f27", -- nieco jaśniejszy morski granat (sekundarne tło)
	fg = "#e4f9ff", -- jasny lodowy błękit (tekst główny)
	fg_alt = "#c7e7f5", -- pastelowy błękit (tekst pomocniczy)
	main = "#98fbcb", -- miętowy błękit (główny akcent)
	accent = "#59d8e0", -- jasny morski błękit (dodatkowy akcent)
	highlight = "#aef6ff", -- świeży lodowy błękit (podświetlenia)

	-- Dodatkowe kolory
	error = "#fa5f76", -- różowo-czerwień (błędy)
	warning = "#ffd97a", -- świeży jasny żółty (ostrzeżenia)
	info = "#70eaff", -- intensywny błękit (informacje)
	success = "#88f4ba", -- pastelowa zieleń (sukcesy)
	gray = "#7a9ca7", -- subtelny szary-niebieski (komentarze)

	-- Nowe kolory dla lepszej różnorodności
	keyword = "#9ce8df", -- miętowy akcent dla słów kluczowych
	variable = "#ffc3bf", -- łagodny róż (zmienne)
	function_name = "#7de3d3", -- pastelowy morski (nazwy funkcji)
	string = "#c2f5e3", -- jasny zielony (ciągi znaków)
	constant = "#ffb76b", -- jasny pomarańcz (stałe/liczby)
	operator = "#5fdcff", -- wyrazisty błękit (operatory)
	type = "#b3aaff", -- delikatny fiolet (typy danych)
}
return M
