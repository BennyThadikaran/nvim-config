return {
	"ibhagwan/fzf-lua",
	lazy = true,
	opts = {},
	keys = {
		{ "<leader>ff", desc = "Find files" },
		{ "<leader>fg", desc = "Live grep" },
		{ "<leader>fb", desc = "List open buffers" },
		{ "<leader>fs", desc = "Grep word under cursor" },
		{ "<leader>f/", desc = "Search in current buffer" },
	},
	config = function()
		local fzf = require("fzf-lua")

		fzf.setup({
			winopts = {
				fullscreen = true,
			},
			picker = {
				files = {
					file_icons = false,
					color_icons = false,
				},
				git = {
					git_icons = false,
					file_icons = false,
					color_icons = false,
				},
				grep = {
					file_icons = false,
					color_icons = false,
				},
				buffers = {
					file_icons = false,
					color_icons = false,
				},
				tabs = {
					file_icons = false,
					color_icons = false,
				},
				lines = {
					file_icons = false,
				},
				tags = {
					file_icons = false,
					color_icons = false,
				},
				quickfix = {
					file_icons = false,
				},
				lsp = {
					file_icons = false,
				},
				finder = {
					file_icons = false,
					color_icons = false,
				},
				complete_file = {
					file_icons = false,
					color_icons = false,
				},
			},
		})

		-- Keybindings
		local map = vim.keymap.set

		map("n", "<leader>ff", fzf.files, { desc = "Find files", noremap = true, silent = true })
		map("n", "<leader>fg", fzf.live_grep_native, { desc = "Live grep", noremap = true, silent = true })
		map("n", "<leader>fb", fzf.buffers, { desc = "List open buffers", noremap = true, silent = true })
		map("n", "<leader>fs", fzf.grep_cword, { desc = "Grep word under cursor", noremap = true, silent = true })
		map("n", "<leader>f/", fzf.blines, { desc = "Search in current buffer", noremap = true, silent = true })
	end,
}
