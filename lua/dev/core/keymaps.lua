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
		vim.keymap.set("n", "<leader>e", ":w<CR>:!gcc % -o %:r && ./%:r<CR>")
	end,
})

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- buffer
keymap.set("n", "<Tab>", ":bnext <CR>", { desc = "Next Buffer" })
keymap.set("n", "<S-Tab>", ":bprevious <CR>", { desc = "Previous Buffer" })
keymap.set("n", "<leader>d", ":bd! <CR>", { desc = "Delete Buffer" })

-- tabs
keymap.set("n", "<leader>t", ":tabnew<CR>", { desc = "New Tab" })
keymap.set("n", "<leader>x", ":tabclose<CR>", { desc = "Close Tab" })
keymap.set("n", "<leader>j", ":tabprevious<CR>", { desc = "Previous Tab" })
keymap.set("n", "<leader>k", ":tabnext<CR>", { desc = "Next Tab" })

-- netrw
keymap.set("n", "<leader>dd", ":Lexplore %:p:h<CR>", { desc = "Open Netrw in current file dir", noremap = true })
keymap.set("n", "<leader>da", ":Lexplore<CR>", { desc = "Open Netrw in current working dir", noremap = true })
