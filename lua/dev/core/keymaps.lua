-- set leader key to space
vim.g.mapleader = ","

local map = vim.keymap.set -- for conciseness

---------------------
-- General Keymaps -------------------
map("n", "<leader>w", ":w!<CR>", { desc = "Quick save file" })
map("n", "<leader>cd", "<cmd>lcd %:p:h<cr><cmd>pwd<cr>", { desc = "Change folder to current file folder" })

map("v", "<", "<gv", { desc = "Indent line" })
map("v", ">", ">gv", { desc = "Indent line" })

-- Execute file based on filetype
vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	callback = function(_)
		map("n", "<leader>e", ":w<CR>:exec '!python3' shellescape(@%, 1)<CR>")
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "javascript",
	callback = function(_)
		map("n", "<leader>e", ":w<CR>:exec '!node' shellescape(@%, 1)<CR>")
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "java",
	callback = function(_)
		map("n", "<leader>e", ":w<CR>:exec '!java' shellescape(@%, 1)<CR>")
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "c",
	callback = function(_)
		map(
			"n",
			"<leader>e",
			":w<CR>:!gcc -std=c23 -Wall -Wextra -Wpedantic -O0 -g -fsanitize=address,undefined % -o %:r && ./%:r<CR>"
		)
	end,
})

-- clear search highlights
map("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
