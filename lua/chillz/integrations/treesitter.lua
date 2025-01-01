-- ~/.config/nvim/lua/chillz/integrations/treesitter.lua
local ts = require("nvim-treesitter.configs")
local colors = require("chillz.colors")

ts.setup({
	ensure_installed = { "lua", "python", "javascript", "html", "css" }, -- Dopasuj do swoich potrzeb
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true,
	},
})

-- Zmiana kolorów dla Treesitter
local ts_highlights = {
	["@keyword"] = { fg = colors.purple },
	["@function"] = { fg = colors.mint_blue },
	["@variable"] = { fg = colors.fg },
	["@parameter"] = { fg = colors.cyan },
	["@string"] = { fg = colors.ice_blue },
}

for group, opts in pairs(ts_highlights) do
	vim.api.nvim_set_hl(0, group, opts)
end
