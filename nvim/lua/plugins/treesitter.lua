return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	build = ":TSUpdate",
	lazy = false,
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			highlight = { enable = true },
			indent = { enable = true },
			autoinstall = true,
			autotag = true,
			ensure_installed = {
				"lua",
				"java",
				"kotlin",
				"scala",
				"yaml",
				"json",
				"markdown",
				"python",
				"tsx",
				"javascript",
				"typescript",
				"vimdoc",
				"vim",
				"bash",
			},
		})
	end,
}
