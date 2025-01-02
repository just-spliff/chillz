local M = {}

function M.get()
	return {
		Comment = { fg = M.palette.comment, style = { "italic" } }, -- just comments
		SpecialComment = { link = "Special" }, -- special things inside a comment
		Constant = { fg = M.palette.ice_blue }, -- (preferred) any constant
		String = { fg = M.palette.green, style = { "italic" } }, -- a string constant: "this is a string"
		Character = { fg = M.palette.teal }, --  a character constant: 'c', '\n'
		Number = { fg = M.palette.ice_blue, style = {} }, --   a number constant: 234, 0xff
		Float = { link = "Number" }, --    a floating point constant: 2.3e10
		Boolean = { fg = M.palette.green_dark, style = {} }, --  a boolean constant: TRUE, false
		Identifier = { fg = M.palette.mint_blue_dark, style = {} }, -- (preferred) any variable name
		Function = { fg = M.palette.blue, style = { "bold" } }, -- function name (also: methods for classes)
		Statement = { fg = M.palette.purple }, -- (preferred) any statement
		Conditional = { fg = M.palette.purple_dark, style = {} }, --  if, then, else, endif, switch, etc.
		Repeat = { fg = M.palette.purple_dark, style = {} }, --   for, do, while, etc.
		Label = { fg = M.palette.cyan }, --    case, default, etc.
		Operator = { fg = M.palette.teal, style = {} }, -- "sizeof", "+", "*", etc.
		Keyword = { fg = M.palette.magenta, style = { "bold" } }, --  any other keyword
		Exception = { fg = M.palette.magenta_dark, style = {} }, --  try, catch, throw

		PreProc = { fg = M.palette.mint_blue }, -- (preferred) generic Preprocessor
		Include = { fg = M.palette.magenta_dark, style = {} }, --  preprocessor #include
		Define = { link = "PreProc" }, -- preprocessor #define
		Macro = { fg = M.palette.purple }, -- same as Define
		PreCondit = { link = "PreProc" }, -- preprocessor #if, #else, #endif, etc.

		StorageClass = { fg = M.palette.teal }, -- static, register, volatile, etc.
		Structure = { fg = M.palette.teal }, --  struct, union, enum, etc.
		Special = { fg = M.palette.mint_blue }, -- (preferred) any special symbol
		Type = { fg = M.palette.yellow, style = { "italic" } }, -- (preferred) int, long, char, etc.
		Typedef = { link = "Type" }, --  A typedef

		-- UI elements
		Error = { fg = M.palette.red_dark }, -- any erroneous construct
		Todo = { bg = M.palette.teal, fg = M.palette.bg, style = { "bold" } }, -- TODO
		qfLineNr = { fg = M.palette.yellow },
		qfFileName = { fg = M.palette.blue },
		htmlH1 = { fg = M.palette.mint_blue, style = { "bold" } },
		htmlH2 = { fg = M.palette.green_dark, style = { "bold" } },

		-- Debugging
		debugPC = { bg = M.palette.bg_highlight }, -- used for highlighting the current line in terminal-debug
		debugBreakpoint = { bg = M.palette.bg_dark, fg = M.palette.fg_gutter },

		-- Illuminate
		illuminatedWord = { bg = M.palette.bg_dim },
		illuminatedCurWord = { bg = M.palette.bg_dim },

		-- Diff
		diffAdded = { fg = M.palette.green },
		diffRemoved = { fg = M.palette.red_dark },
		diffChanged = { fg = M.palette.mint_blue },
		diffOldFile = { fg = M.palette.yellow },
		diffNewFile = { fg = M.palette.ice_blue },
	}
end

return M
