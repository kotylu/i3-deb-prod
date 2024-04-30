return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
	config = function (plugin, opts)
		local configs = require("nvim-treesitter.configs")

		configs.setup({

			ensure_installed = { "lua", "vim", "vimdoc" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
