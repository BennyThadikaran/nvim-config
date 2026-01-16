return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPost", "BufNewFile", "VeryLazy" },
		branch = "master",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				highlight = {
					enable = true,
				},
				indent = { enable = true },
				fold = { enable = true },
				sync_install = true,
				ensure_installed = {
					"python",
					"markdown",
					"bash",
					"c",
				},
			})
		end,
	},
}
