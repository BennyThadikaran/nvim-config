return {
	"ray-x/lsp_signature.nvim",
	config = function(_, opts)
		require("lsp_signature").setup(opts)
	end,
}
