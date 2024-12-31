local M = {}

-- Paleta kolorów
M.colors = {
	bg = "#0b1f2a",
	bg_alt = "#123345",
	fg = "#e0f7fa",
	fg_dim = "#8ba6b3",
	ice_blue = "#5bc8ff",
	arctic_green = "#34d399",
	frost_purple = "#b4a7e7",
	snow_white = "#ffffff",
	glacier_gray = "#607d8b",
	crimson = "#ff5370",
	amber = "#ffd54f",
	cobalt = "#3f51b5",
	teal = "#009688",
}

M.options = {
	transparent = false, -- Tło nieprzezroczyste domyślnie
}

local function set_highlight(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.setup(opts)
	M.options = vim.tbl_extend("force", M.options, opts or {})
	M.load()
end

function M.load()
	local colors = M.colors

	-- Podstawowe kolory
	set_highlight("Normal", { fg = colors.fg, bg = opts.transparent and "NONE" or colors.bg })
	set_highlight("NormalNC", { fg = colors.fg_dim, bg = opts.transparent and "NONE" or colors.bg_alt })
	set_highlight("Comment", { fg = colors.fg_dim, italic = true })
	set_highlight("Constant", { fg = colors.ice_blue })
	set_highlight("Identifier", { fg = colors.arctic_green })
	set_highlight("Statement", { fg = colors.cobalt })
	set_highlight("PreProc", { fg = colors.frost_purple })
	set_highlight("Type", { fg = colors.teal })

	-- Podświetlenia
	set_highlight("Visual", { bg = colors.glacier_gray })
	set_highlight("Search", { bg = colors.arctic_green, fg = colors.bg })
	set_highlight("IncSearch", { bg = colors.ice_blue, fg = colors.bg })
	set_highlight("StatusLine", { bg = colors.bg_alt, fg = colors.fg })
	set_highlight("StatusLineNC", { bg = colors.bg, fg = colors.fg_dim })

	-- Treesitter
	set_highlight("TSKeyword", { fg = colors.cobalt, bold = true })
	set_highlight("TSFunction", { fg = colors.frost_purple, bold = true })
	set_highlight("TSVariable", { fg = colors.crimson })
	set_highlight("TSParameter", { fg = colors.teal })

	-- Błędy i ostrzeżenia
	set_highlight("Error", { fg = colors.crimson, bold = true })
	set_highlight("WarningMsg", { fg = colors.amber, bold = true })
	set_highlight("Info", { fg = colors.ice_blue })
	set_highlight("Success", { fg = colors.arctic_green, bold = true })
end

return M
