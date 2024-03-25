local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "dev.plugins" }, { import = "dev.plugins.lsp" } }, {
	checker = {
		enabled = false,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
	performance = {
		cache = { enabled = true },
		rtp = {
			disabled_plugins = {
				"gzip",
				"osc52",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
				"man",
				"matchit",
				"matchparen",
				"spellfile",
				"nvim",
				"editorconfig",
				"rplugin",
				"shada",
			},
		},
	},
})
