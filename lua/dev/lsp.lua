vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(_)
		local opts = { noremap = true, silent = true }
		local map = vim.keymap.set

		opts.desc = "Go to declaration"
		map("n", "gD", vim.lsp.buf.declaration, opts)

		opts.desc = "See available code actions"
		map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

		opts.desc = "Show line diagnostics"
		map("n", "<leader>d", vim.diagnostic.open_float, opts)

		opts.desc = "Go to previous diagnostic"
		map("n", "[d", vim.diagnostic.goto_prev, opts)

		opts.desc = "Go to next diagnostic"
		map("n", "]d", vim.diagnostic.goto_next, opts)

		opts.desc = "Show documentation for what is under cursor"
		map("n", "K", vim.lsp.buf.hover, opts)

		opts.desc = "Restart LSP"
		map("n", "<leader>rs", ":LspRestart<CR>", opts)
	end,
})

vim.schedule(function()
	vim.lsp.enable("pyright")
	vim.lsp.enable("lua_ls")
	vim.lsp.enable("jsonls")
	vim.lsp.enable("clangd")
end)
