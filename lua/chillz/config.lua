local M = {
	transparent = false, -- Domyślnie przezroczystość jest wyłączona
}

-- Funkcja konfiguracji, aby ustawić opcje
M.apply = function(opts)
	opts = opts or {}
	M.transparent = opts.transparent or M.transparent
end

-- Funkcja zastosowania transparentności
M.apply_transparency = function()
	if M.transparent then
		vim.cmd("hi Normal guibg=NONE")
		vim.cmd("hi NormalNC guibg=NONE")
		vim.cmd("hi VertSplit guibg=NONE")
		vim.cmd("hi StatusLine guibg=NONE")
		vim.cmd("hi StatusLineNC guibg=NONE")
	end
end

return M
