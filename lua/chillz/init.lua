local M = {}

M.setup = function(opts)
	opts = opts or {}

	-- Debugowanie
	print("Ładowanie kolorów...")

	-- Wczytaj kolory i grupy highlight
	local ok, colors = pcall(require, "chillz.colors")
	if not ok then
		print("Błąd wczytywania kolorów!")
		return
	end

	local ok2, highlights = pcall(require, "chillz.highlights")
	if not ok2 then
		print("Błąd wczytywania highlights!")
		return
	end

	-- Zastosuj highlighty
	for group, settings in pairs(highlights.setup(colors)) do
		vim.api.nvim_set_hl(0, group, settings)
	end

	-- Zastosuj opcje konfiguracyjne (opcjonalnie)
	require("chillz.config").apply(opts)

	print("Kolory załadowane pomyślnie!")
end

return M
