return {
	{
		"mfussenegger/nvim-dap",
		config = function()
			vim.api.nvim_set_keymap("n", "<leader>dc", "<cmd>DapContinue<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<leader>ds", "<cmd>DapStepOver<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<leader>si", "<cmd>DapStepInto<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<leader>so", "<cmd>DapStepOut<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<leader>dl", "<cmd>DapRunToCursor<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<leader>dr", "<cmd>DapTerminate<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap(
				"n",
				"<leader>db",
				"<cmd>DapToggleBreakpoint<CR>",
				{ noremap = true, silent = true }
			)
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			dapui.setup({
				layouts = {
					{
						-- You can change the order of elements in the sidebar
						elements = {
							-- Provide IDs as strings or tables with "id" and "size" keys
							{
								id = "scopes",
								size = 0.75, -- Can be float or integer > 1
							},
							{ id = "watches", size = 0.25 },
							-- { id = "breakpoints", size = 0.25 },
							-- { id = "stacks", size = 0.25 },
						},
						size = 50,
						position = "left", -- Can be "left" or "right"
					},
					{
						elements = {
							"repl",
							"console",
						},
						size = 10,
						position = "bottom", -- Can be "bottom" or "top"
					},
				},
			})

			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end

			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end

			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end
		end,
	},
	{
		"mfussenegger/nvim-dap-python",
		ft = "python",
		dependencies = {
			"mfussenegger/nvim-dap",
			"rcarriga/nvim-dap-ui",
		},
		config = function(_, opts)
			local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
			require("dap-python").setup(path)

			vim.api.nvim_set_keymap(
				"n",
				"<leader>dpr",
				'<cmd>lua require("dap-python").test_method()<CR>',
				{ noremap = true, silent = true }
			)
		end,
	},
}
