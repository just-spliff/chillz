local M = {}

M.options = {
	transparent = false, -- Czy używać transparentnego tła
}

M.setup = function(opts)
	M.options = vim.tbl_extend("force", M.options, opts or {})
end

return M
