local colors = require("chillz.colors").palette

local M = {}

function M.setup()
	local highlights = {
		-- Podstawowe highlighty UI
		Normal = { fg = colors.fg, bg = colors.bg },
		CursorLine = { bg = colors.bg_highlight },
		Comment = { fg = colors.comment, style = "italic" },
		Visual = { bg = colors.bg_alt },
	}

	-- Funkcja do ładowania highlightów z wtyczek
	local function load_plugin_highlights(plugin)
		local ok, plugin_highlights = pcall(require, "chillz.plugins." .. plugin)
		if ok then
			for group, settings in pairs(plugin_highlights.setup()) do
				highlights[group] = settings
			end
		end
	end

	-- Lista wtyczek do załadowania
	local plugins = { "alpha", "treesitter" }
	for _, plugin in ipairs(plugins) do
		load_plugin_highlights(plugin)
	end

	return highlights
end

return M
