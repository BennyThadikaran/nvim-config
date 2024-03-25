return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		config = function()
			-- import nvim-treesitter plugin
			local configs = require("nvim-treesitter.configs")

			-- configure treesitter
			configs.setup({ -- enable syntax highlighting
				highlight = {
					enable = true,
				},
				indent = { enable = true },
				sync_install = false,
				ensure_installed = {
					"json",
					"python",
					"javascript",
					"typescript",
					"tsx",
					"yaml",
					"html",
					"css",
					"markdown",
					"markdown_inline",
					"bash",
					"lua",
					"vim",
					"dockerfile",
					"gitignore",
				},
			})
		end,
	},
}
