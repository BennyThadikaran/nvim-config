return {
	"stevearc/conform.nvim",
	lazy = true,
	event = { "BufWritePre" }, -- load before saving a buffer
	cmd = { "ConformInfo" }, -- load when :ConformInfo is called
	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format({ async = true })
			end,
			desc = "Format buffer",
		},
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "ruff_fix", "ruff_format" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			json = { "prettier" },
			css = { "prettier" },
			html = { "prettier" },
			markdown = { "prettier" },
			toml = { "pyproject-fmt" },
			c = { "clang_format" },
		},
		formatters = {
			ruff_fix = {
				prepend_args = { "--ignore", "F401" }, -- disable removing unused imports
			},
		},
		format_on_save = {
			lsp_format = "fallback",
		},
	},
}
