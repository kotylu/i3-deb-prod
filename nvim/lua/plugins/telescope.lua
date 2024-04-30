return {
	"nvim-telescope/telescope.nvim", tag = "0.1.5",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		local leader = vim.g.mapleader
		local keystofunc = {
			ff = builtin.find_files,
			gf = builtin.live_grep,
			[leader] = builtin.buffers,
			fh = builtin.help_tags
		}
		for keys, func in pairs(keystofunc)
		do
			vim.keymap.set("n", "<leader>"..keys, func, {})
		end
	end
}
