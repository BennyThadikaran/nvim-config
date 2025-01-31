local opt = vim.opt -- for conciseness

vim.lsp.set_log_level(vim.log.levels.OFF)
vim.cmd("filetype plugin on")
vim.cmd("set wildmenu")

vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0

opt.cc = "80"
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)
opt.syntax = "ON"
opt.backup = false
opt.wrap = true
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

-- netrw
-- vim.g.netrw_keepdir = 0
-- vim.g.netrw_winsize = 30
-- vim.g.netrw_banner = 0
-- vim.g.netrw_browse_split = 2
-- vim.g.netrw_liststyle = 3
-- vim.g.netrw_localcopydircmd = "cp -r"

vim.g.python3_host_prog = "~/Documents/python/pynvim/bin/python3"
