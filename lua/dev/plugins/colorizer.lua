return {
	"NvChad/nvim-colorizer.lua",
	event = "BufReadPost",
	-- event = "VeryLazy",
	config = function()
		require("colorizer").setup({
			filetypes = { "javascript", "python", "css", "bash", "css" },
		})
	end,
}
