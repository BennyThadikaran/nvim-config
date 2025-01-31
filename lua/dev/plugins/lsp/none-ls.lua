return {
	"nvimtools/none-ls.nvim", -- configure formatters & linters
	lazy = false,
	config = function()
		local null_ls = require("null-ls")

		local null_ls_utils = require("null-ls.utils")

		-- for conciseness
		local formatting = null_ls.builtins.formatting -- to setup formatters

		-- to setup format on save
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

		-- configure null_ls
		null_ls.setup({
			-- add package.json as identifier for root (for typescript monorepos)
			root_dir = null_ls_utils.root_pattern(".null-ls-root", "Makefile", ".git", "package.json"),
			-- setup formatters & linters
			sources = {
				formatting.stylua, -- lua formatter
				formatting.prettier,
				formatting.isort,
				formatting.clang_format,
				formatting.black.with({
					extra_args = { "-l", "80" },
				}),
			},
			-- configure format on save
			on_attach = function(current_client, bufnr)
				if current_client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({
								async = false,
								bufnr = bufnr,
							})
						end,
					})
				end
			end,
		})
	end,
}
