local M = {}

-- Funkcja do zastosowania opcji konfiguracyjnych
M.apply = function(opts)
	opts = opts or {}

	-- Przykład zastosowania opcji: ustawienie transparentności
	if opts.transparent then
		vim.cmd("hi Normal guibg=NONE")
		vim.cmd("hi NormalNC guibg=NONE")
		vim.cmd("hi VertSplit guibg=NONE")
		vim.cmd("hi StatusLine guibg=NONE")
	end

	-- Możesz dodać inne opcje, np. ustawienie czcionki, przezroczystości itp.
end

return M
