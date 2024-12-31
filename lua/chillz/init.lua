local M = {}

-- Paleta kolorów
M.colors = {
	-- Tło i tekst
	bg = "#0d1a1a", -- Ciemne tło
	bg_alt = "#102626", -- Nieco jaśniejsze tło
	fg = "#d8f8f8", -- Główny kolor tekstu
	fg_dim = "#a0c4c4", -- Przygaszony tekst

	-- Miętowe akcenty
	mint_light = "#a8ffde",
	mint = "#74d6b8",
	mint_dark = "#3c8d77",

	-- Kontrastowe akcenty
	orange = "#ffb86c",
	red = "#ff6e6e",
	yellow = "#f3f99d",
	blue = "#62d6e8",
	purple = "#c792ea",
	pink = "#ff92df",

	-- Dodatkowe kolory
	gray = "#546a6a",
	highlight = "#1f3636",
	error = "#ff5555",
	warning = "#f1fa8c",
	info = "#8be9fd",
	success = "#50fa7b",
}

-- Funkcja do ustawiania grup highlight
local function set_highlight(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

-- Funkcja do ładowania schematu
function M.load()
	local colors = M.colors

	-- Ustawienia podstawowe
	set_highlight("Normal", { fg = colors.fg, bg = colors.bg })
	set_highlight("NormalNC", { fg = colors.fg_dim, bg = colors.bg_alt })
	set_highlight("Comment", { fg = colors.fg_dim, italic = true })
	set_highlight("Constant", { fg = colors.orange })
	set_highlight("Identifier", { fg = colors.mint_light })
	set_highlight("Statement", { fg = colors.blue })
	set_highlight("PreProc", { fg = colors.purple })
	set_highlight("Type", { fg = colors.yellow })

	-- Ustawienia dla błędów i ostrzeżeń
	set_highlight("Error", { fg = colors.error, bold = true })
	set_highlight("WarningMsg", { fg = colors.warning, bold = true })
	set_highlight("Info", { fg = colors.info })
	set_highlight("Success", { fg = colors.success, bold = true })

	-- Podświetlenia
	set_highlight("Visual", { bg = colors.highlight })
	set_highlight("Search", { bg = colors.mint_dark, fg = colors.fg })
	set_highlight("IncSearch", { bg = colors.yellow, fg = colors.bg })

	-- Treesitter
	set_highlight("TSKeyword", { fg = colors.blue, bold = true })
	set_highlight("TSFunction", { fg = colors.purple, bold = true })
	set_highlight("TSVariable", { fg = colors.orange })
	set_highlight("TSParameter", { fg = colors.mint })

	-- StatusLine
	set_highlight("StatusLine", { bg = colors.bg_alt, fg = colors.fg })
	set_highlight("StatusLineNC", { bg = colors.bg, fg = colors.fg_dim })
end

return M
