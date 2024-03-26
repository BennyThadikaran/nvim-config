# Nvim-config
This is my personal [Neovim](https://neovim.io/) config. Neovim is my default code/text editor.

I currently use Neovim v0.9.5 (AppImage) on Linux Mint 21.3 Cinnamon edition

Most of the config is derived from [Josean-dev's dot files](https://github.com/josean-dev/dev-environment-files). I edited out some parts and made a few additions to suit my needs. You can see his [youtube video](https://www.youtube.com/watch?v=vdn_pKJUda8) to familiarize with the setup.

I primarily code in Python (Occasional JS, Bash).

## Setup on Linux
Make sure to install the latest Neovim package or use an AppImage.

For AppImage store them in a local runtime path (use `echo $PATH` in terminal to see your runtime paths). Make sure it is executable.

I have the following alias stored in `~/.bash_aliases`

```
nvim=nvim.appimage
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

## Learning Resources

[Vim Tutorials - TheFrugalComputerGuy](https://www.youtube.com/playlist?list=PLy7Kah3WzqrEjsuvhT46fr28Q11oa5ZoI) - YouTube

[Everything you need to know to configure neovim using lua](https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/)
