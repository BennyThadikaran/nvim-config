# Nvim-config
This is my personal [Neovim](https://neovim.io/) config. Neovim is my default code/text editor.

I currently use Neovim v0.9.5 (AppImage) on Linux Mint 21.3 Cinnamon edition

Most of the config is derived from [Josean-dev's dot files](https://github.com/josean-dev/dev-environment-files). I edited out some parts and made a few additions to suit my needs. You can see his [youtube video](https://www.youtube.com/watch?v=vdn_pKJUda8) to familiarize with the setup.

I primarily code in Python (Occasional JS, Bash).

## Setup on Linux
Make sure to install the latest Neovim package or use an AppImage.

For AppImage, place them in a local runtime path and make it executable. I placed mine in `~/bin/` ([See other options](https://unix.stackexchange.com/a/36874)).
Run `echo $PATH` in terminal to check your runtime paths.

I have the following alias stored in `~/.bash_aliases`, so i use `v` in terminal to start neovim.

```
alias v=nvim.appimage
```

**1. Backup your existing Neovim config and run the below command**
```bash
# WARNING: This will delete your nvim config and installed plugins
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
```

**2. Clone repo into `~/.config/nvim` folder**
```
git clone https://github.com/BennyThadikaran/nvim-config.git ~/.config/nvim
```

**3. On opening `neovim`:**

- Lazy should begin installing plugins. Run `:Lazy` to check installed plugins.
- Mason should install LSPs, formatters etc. Run `:MasonInstall` if not triggered.
- Treesitter should install language parsers. Run `:TSUpdate` to be sure.

## Configuration Info

LSP configuration and setup is located in `lua/dev/plugins/lsp/lspconfig.lua`

Language specific Formatters, linters etc are located in `lua/dev/plugins/lsp/none-ls.lua`

Keymaps are located in `lua/dev/core/Keymaps.lua`.

Other global options are set in `lua/dev/core/options.lua`

Plugin configs are located in `lua/dev/plugins`. I use builtin `netrw` as file explorer.

I disabled many builtin plugins except `netrw` in `lua/dev/lazy.lua` to keep the startup time fast. You may want to enable some (shada, tutor etc) based on your needs. (I dont know what most of them do and havent run into problems :smiley:).

Lastly i know just the bare basics of Lua and enough neovim for setup/daily use. If you run into problems be prepared to experiment/research on your own. :stuck_out_tongue_winking_eye:

## Plugins

[Lazy](https://github.com/folke/lazy.nvim) - Package manager

[Gruvbox](https://github.com/morhetz/gruvbox) - Colorscheme

[Staline](https://github.com/tamton-aquib/staline.nvim) - Statusline and bufferline

[Autopairs](https://github.com/windwp/nvim-autopairs) - Auto completion for `{}`, `()`, `""`etc

[Surround](https://github.com/kylechui/nvim-surround) - Add, delete or change `()`, `""` etc around text

[Comment](https://github.com/numToStr/Comment.nvim) - Toggle code comments

[Indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim) - Adds indent lines in code.

[Colorizer](https://github.com/NvChad/nvim-colorizer.lua) - Color highlighter

[Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Improved language specific syntax highlighting. Atleast that's what i use it for 😺

#### Autocompletion and LSP

[Lspconfig](https://github.com/neovim/nvim-lspconfig) - LSP config setup

[Mason](https://github.com/williamboman/mason.nvim) - Package manager to install LSPs, formatter, Linter etc.

[None-ls](https://github.com/nvimtools/none-ls.nvim) - Null-ls fork, interacts with LSP to provide linting, formatting and other actions.

[lsp_signature](https://github.com/ray-x/lsp_signature.nvim) - Display function signature as you type

[hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Autocompletion engine. A few other plugins acts as completion sources like [cmp-buffer](https://github.com/hrsh7th/cmp-buffer) (buffers), [cmp-path](https://github.com/hrsh7th/cmp-path) (Filepaths) 

[LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet completion engine

[friendly-snippets](https://github.com/rafamadriz/friendly-snippets) - A collection of usefull snippets

## Learning Resources

[Vim Tutorials - TheFrugalComputerGuy](https://www.youtube.com/playlist?list=PLy7Kah3WzqrEjsuvhT46fr28Q11oa5ZoI) - YouTube

[Everything you need to know to configure neovim using lua](https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/)
