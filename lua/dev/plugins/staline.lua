return {
	"tamton-aquib/staline.nvim",
	-- event = { "InsertEnter", "CmdLineEnter" },
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
