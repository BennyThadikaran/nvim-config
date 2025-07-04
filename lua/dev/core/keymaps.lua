-- set leader key to space
vim.g.mapleader = ","

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------
keymap.set("n", "<leader>w", ":w!<CR>", { desc = "Quick save file" })
keymap.set("n", "<leader>cx", "<cmd>silent !chmod +x %<CR>", { desc = "Make file executable", noremap = true })
keymap.set("n", "<leader>cd", "<cmd>lcd %:p:h<cr><cmd>pwd<cr>", { desc = "Change folder to current file folder" })

keymap.set("v", "<", "<gv", { desc = "Indent line" })
keymap.set("v", ">", ">gv", { desc = "Indent line" })

-- Execute file based on filetype
vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	callback = function(args)
		vim.keymap.set("n", "<leader>e", ":w<CR>:exec '!python3' shellescape(@%, 1)<CR>")
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "javascript",
	callback = function(args)
		vim.keymap.set("n", "<leader>e", ":w<CR>:exec '!node' shellescape(@%, 1)<CR>")
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "java",
	callback = function(args)
		vim.keymap.set("n", "<leader>e", ":w<CR>:exec '!java' shellescape(@%, 1)<CR>")
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "c",
	callback = function(args)
		vim.keymap.set("n", "<leader>e", ":w<CR>:!gcc % -o %:r -O -W -Wall -pedantic -ansi -lm -std=c99 && ./%:r<CR>")
	end,
})

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
