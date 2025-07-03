return {
	{
		"tamton-aquib/staline.nvim",
		event = { "BufReadPost", "BufNewFile", "VeryLazy" },
		config = function()
			require("staline").setup({
				defaults = {
					line_column = "%l/%L %c% ",
				},
			})

			require("stabline").setup({
				style = "slant",
			})
		end,
	},

	{
		"NvChad/nvim-colorizer.lua",
		lazy = true,
		keys = {
			{
				"<leader>ct",
				"<CMD>ColorizerToggle<CR>",
				desc = "Colorizer Toggle",
			},
		},
		config = true,
	},
}
