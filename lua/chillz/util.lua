local M = {}

M.highlight = function(group, props)
	local style = props.style and "gui=" .. props.style or "gui=NONE"
	local fg = props.fg and "guifg=" .. props.fg or "guifg=NONE"
	local bg = props.bg and "guibg=" .. props.bg or "guibg=NONE"
	vim.cmd(string.format("highlight %s %s %s %s", group, style, fg, bg))
end

return M
