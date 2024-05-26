return {
	"nvimdev/guard.nvim",
	lazy = false,
	config = function()
		local ft = require("guard.filetype")

		ft("python"):fmt({
			cmd = "black",
			args = { "--quiet", "-l", "80", "-" },
			stdin = true,
		})

		ft("typescript,javascript,json,css,html,markdown,yaml"):fmt({
			cmd = "prettier",
			args = { "--stdin-filepath" },
			fname = true,
			stdin = true,
		})

		ft("lua"):fmt({
			cmd = "stylua",
			args = { "-" },
			stdin = true,
		})

		-- Call setup() LAST!
		require("guard").setup({
			-- Choose to format on every write to a buffer
			fmt_on_save = true,
			-- Use lsp if no formatter was defined for this filetype
			lsp_as_default_formatter = false,
			-- By default, Guard writes the buffer on every format
			-- You can disable this by setting:
			-- save_on_fmt = false,
		})
	end,
}
