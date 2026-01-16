local opt = vim.opt -- for conciseness

vim.lsp.set_log_level(vim.log.levels.OFF)
vim.cmd("filetype plugin on")

vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0

opt.wildmenu = true
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)
opt.syntax = "ON"
opt.backup = false
opt.showtabline = 2

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

vim.g.python3_host_prog = "~/Documents/python/pynvim/bin/python3"

vim.o.foldmethod = "expr"
vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.o.foldlevel = 99 -- 0 will close all folds. 1 - top level folds, 2 and higher - nested folds
vim.o.foldminlines = 5 -- minimum no of lines required to consider a fold
vim.o.foldnestmax = 2

-- https://github.com/neovim/neovim/issues/14433#issuecomment-1183682651
vim.g.omni_sql_default_compl_type = "syntax"
