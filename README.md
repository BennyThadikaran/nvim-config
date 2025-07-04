# Nvim-config

This is my personal [Neovim](https://neovim.io/) config for Python (some JS and Bash).

## Setup on Linux

Make sure to install the latest Neovim package or use an AppImage.

For AppImage, place them in a local runtime path and make it executable.

You will need Python v3 and NodeJs (to install prettier). You will also need to install Ripgrep, fd and fzf to work with fzf-lua plugin. See [fzf-lua dependencies](https://github.com/ibhagwan/fzf-lua?tab=readme-ov-file#dependencies)

**1. Backup your existing Neovim config and run the below command**

```bash
# WARNING: This will delete your nvim config and installed plugins
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
```

**2. Clone repo into `~/.config/nvim` folder**

```
git clone https://github.com/BennyThadikaran/nvim-config.git ~/.config/nvim
```

**3. On opening `neovim`:**

- Lazy should begin installing plugins. Run `:Lazy` to check installed plugins.
- You will need to manually install LSPs using `:Mason` - pyright (python), lua_ls (lua), json_ls (json), clangd(c, c++)
- Treesitter should install language parsers. Run `:TSUpdate` to be sure.

**4. Install formatters with `:MasonInstall`**

`:MasonInstall ruff prettier stylua shfmt`

**5. To setup python3 provider for nvim.**

- It is defined in `/lua/dev/core/options.lua` as `vim.g.python3_host_prog`.
- Create a python virtual env using venv and install pynvim (`pip install pynvim`).
- Edit the filepath in `lua/dev/core/options.lua` to the newly created venv folder.

## Configuration Info

LSP are now natively handled with the configuration defined in `after/lsp/`. These are sourced from [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig).

LSP specific keymaps and additional configs are located in `lua/dev/lsp.lua`

Keymaps are located in `lua/dev/core/Keymaps.lua`.

Other global options are set in `lua/dev/core/options.lua`

Plugin configs are located in `lua/dev/plugins`. Plugins are lazy loaded using [folke/lazy.nvim](https://github.com/folke/lazy.nvim).

I disabled many builtin plugins in `lua/dev/lazy.lua` to keep the startup time fast. You may want to enable some (shada, tutor etc) based on your needs. (I dont know what most of them do and havent run into problems :smiley:).

Autocompletion is setup using [Saghen/blink.cmp](https://github.com/Saghen/blink.cmp) and [stevearc/conform.nvim](https://github.com/stevearc/conform.nvim) is used for code formatting & linting.

## Learning Resources

[Vim Tutorials - TheFrugalComputerGuy](https://www.youtube.com/playlist?list=PLy7Kah3WzqrEjsuvhT46fr28Q11oa5ZoI) - YouTube

[Everything you need to know to configure neovim using lua](https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/)

## Screenshot

### Startup

![nvim startup view](https://res.cloudinary.com/doyu4uovr/image/upload/s--mu2nZcil--/c_scale,f_auto,w_1366/v1726294887/nvim/nvim-startup-view_ckub17.png)

### Python code

![nvim-python-code-view](https://res.cloudinary.com/doyu4uovr/image/upload/s--x7KiZeuN--/f_auto/v1726294887/nvim/nvim-python-code-view_nbdjzh.png)

### Python debugger

![Python debug](https://res.cloudinary.com/doyu4uovr/image/upload/s--jHEl9Lki--/f_auto/v1726294887/nvim/python-debug-dap_rqbsgo.png)
