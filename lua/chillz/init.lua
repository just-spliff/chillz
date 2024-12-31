local M = {}

-- Definicja palety kolorów
M.colors = {
	bg = "#0f1e1e",
	fg = "#e0f0e0",
	mint = "#a8d5ba",
	accent = "#74c8a2",
	gray = "#4a5d5d",
	dark_mint = "#4e7f68",
}

-- Funkcja do ustawiania kolorów
local function set_highlight(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

-- Główna funkcja ładująca schemat
function M.load()
	local colors = M.colors

	-- Przykładowe grupy highlight
	set_highlight("Normal", { fg = colors.fg, bg = colors.bg })
	set_highlight("Comment", { fg = colors.gray, italic = true })
	set_highlight("Constant", { fg = colors.mint })
	set_highlight("Function", { fg = colors.accent, bold = true })
	set_highlight("Statement", { fg = colors.dark_mint, italic = true })

	-- Możesz dodać więcej grup...
end

return M
