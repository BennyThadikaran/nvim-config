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

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- Tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- buffer
keymap.set("n", "<Tab>", ":bnext <CR>", { desc = "Next Buffer" })
keymap.set("n", "<S-Tab>", ":bprevious <CR>", { desc = "Previous Buffer" })
keymap.set("n", "<leader>d", ":bd! <CR>", { desc = "Delete Buffer" })

-- netrw
-- function _G.toggle_netrw()
--   local num = vim.fn.bufwinnr("^Netrw")
--
--   if num ~= -1 then
--     vim.cmd(tostring(num) .. "wincmd w")
--     vim.cmd("q")
--   else
--     vim.cmd("Vexplore %:p:h")
--   end
-- end

-- Use :ToggleNetrw to toggle netrw (Opens current file directory)
-- keymap.set("n", "<leader>f", ":lua toggle_netrw()<CR>", { desc = "Open Netrw in current file dir", noremap = true })
keymap.set("n", "<leader>f", ":Neotree toggle<CR>", { desc = "Toggle Neotree", noremap = true })
