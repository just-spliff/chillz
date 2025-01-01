local M = {}

M.palette = {
	-- Tło
	bg = "#162326", -- Tło główne (ciemny, mroźny)
	bg_alt = "#1D3339", -- Alternatywne tło (lekko jaśniejsze)
	bg_dim = "#0E1A1C", -- Przyciemnione tło
	bg_highlight = "#245157", -- Tło podświetlenia (nasycone)

	-- Tekst
	fg = "#E4FFFF", -- Główny kolor tekstu (bardzo jasny, chłodny)
	fg_alt = "#AEDFE5", -- Alternatywny kolor tekstu (miętowy)
	fg_dim = "#5F8A8E", -- Przyciemniony tekst (spokojny miętowy)
	fg_light = "#F0FFFF", -- Bardzo jasny tekst (prawie biały)

	-- Akcenty
	mint_blue = "#6FE7E8", -- Kolor przewodni (nasycony miętowy błękit)
	mint_dark = "#49C4C7", -- Ciemniejszy miętowy
	ice_blue = "#ACFFFF", -- Intensywny lodowy błękit
	frost_green = "#3DDCD2", -- Zielony mroźny (jasny i chłodny)
	cyan = "#3FB8C8", -- Intensywny cyan

	-- Kontrasty
	warning = "#F2AF5F", -- Ostrzeżenie (żywy pomarańczowy kontrast)
	error = "#F25C54", -- Błąd (mocny czerwony odcień)
	success = "#5FF2A1", -- Sukces (jasna, nasycona zieleń)
	info = "#3DAEEF", -- Informacja (żywy, jasny niebieski)

	-- Specjalne
	purple = "#A485F2", -- Fioletowy akcent (nasycony)
	deep_blue = "#3B6FCC", -- Głęboki niebieski (żywy)
	magenta = "#E08DFF", -- Magenta (intensywna)
	pink = "#FFB8C5", -- Jasny róż (ciepły kontrast)
	orange = "#F29367", -- Żywy pomarańczowy (lekko ciepły)

	-- Gradienty
	gradient_start = "#6FE7E8", -- Start gradientu (miętowy błękit)
	gradient_mid = "#49C4C7", -- Środek gradientu (ciemniejszy miętowy)
	gradient_end = "#3DDCD2", -- Koniec gradientu (zielonkawy)
}
return M
