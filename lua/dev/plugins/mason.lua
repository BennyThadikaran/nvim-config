return {
	"williamboman/mason.nvim",
	event = { "BufReadPost", "BufNewFile", "BufWritePre", "VeryLazy" },
	config = function()
		-- import mason
		local mason = require("mason")

		-- enable mason and configure icons
		mason.setup({
			max_concurrent_installers = 8,
			pip = {
				-- upgrade pip to latest version in venv before install
				upgrade_pip = true,
			},
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
	end,
}
