return {
	"nvim-lua/plenary.nvim",
	{ "numToStr/Comment.nvim", config = true, event = { "BufReadPre", "BufNewFile" } },
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
}
