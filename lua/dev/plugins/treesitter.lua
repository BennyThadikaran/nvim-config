return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    config = function()
      -- import nvim-treesitter plugin
      local configs = require("nvim-treesitter.configs")

      -- configure treesitter
      configs.setup({ -- enable syntax highlighting
        highlight = {
          enable = true,
        },
        indent = { enable = true },
        sync_install = true,
        ensure_installed = {
          "python",
          "markdown",
          "bash",
          "c",
        },
      })
    end,
  },
}
