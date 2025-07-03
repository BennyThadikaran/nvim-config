return {
	{ "numToStr/Comment.nvim", event = { "BufReadPost", "BufNewFile", "VeryLazy" } },
	{ "saghen/blink.indent", event = { "BufReadPost", "BufNewFile", "VeryLazy" }, opts = {} },

	{
		"saghen/blink.pairs",
		version = "*",
		event = "InsertEnter",
		dependencies = "saghen/blink.download",
		opts = {
			highlights = { enabled = false },
		},
	},
}
