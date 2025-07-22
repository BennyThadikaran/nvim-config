return {
	{
		"tamton-aquib/staline.nvim",
		event = { "BufReadPost", "BufNewFile", "VeryLazy" },
		config = function()
			require("staline").setup({
				defaults = {
					line_column = "%Y %l/%L %c% ",
					true_colors = true,
					full_path = true,
					cool_symbol = " ",
				},
				sections = {
					left = { "- ", "-mode", "left_sep", "file_name" },
					mid = {},
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
