return {
	"tamton-aquib/staline.nvim",
	event = { "BufWinEnter" },
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
}
