return {
	"navarasu/onedark.nvim",
	config = function()
		local one_dark = require("onedark")

		one_dark.setup({
			style = "warm",
			transparent = true,
			ending_tildes = true,

			code_style = {
				comment = "italic"
			},

			colors = {},
			highlights = {
				Cursor = { fg = "#000000", bg = "#FFFFFF" },
				CursorLineConceal = { fg = "none", bg = "none" },
				LineNr = { fg = "#CCCCCC", bg = "none" },
				SignColumnSB = { bg = "none" },
				SignColumn = { bg = "none" }
			},


		})

		one_dark.load()
	end
}
