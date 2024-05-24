return {
	"nvimdev/guard.nvim",
	event = "LspAttach",

	dependencies = {
		"nvimdev/guard-collection",
	},
	config = function()
		local ft = require("guard.filetype")

		ft("python"):fmt("black"):env({
			extra_args = { "-l", "80" },
		})

		ft("typescript,javascript,json,css,html,markdown,yaml"):fmt("prettier")

		ft("lua"):fmt("stylua")

		-- Call setup() LAST!
		require("guard").setup({
			-- Choose to format on every write to a buffer
			fmt_on_save = true,
			-- Use lsp if no formatter was defined for this filetype
			lsp_as_default_formatter = true,
			-- By default, Guard writes the buffer on every format
			-- You can disable this by setting:
			-- save_on_fmt = false,
		})
	end,
}
