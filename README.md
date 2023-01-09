# Neovim

This is my personal configuration for Neovim.

## Package Manager

I use [Lazy](https://github.com/folke/lazy.nvim) as the plugin manager. It is
like a nicer version of Packer, with built-in lazy-loading, a nice user
interface, and easy configuration. With Lazy, adding plugins is as simple as
putting them in a Lua file in the `plugins/` dir, and then it more-or-less
takes them from there.

## Plugins

### Core Plugins

- **[Dressing](https://github.com/stevearc/dressing.nvim)**: More beautiful
styling for pop-ups.
- **[nui](https://github.com/MunifTanjim/nui.nvim)**: Framework for windows and
modals.
- **[nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)**:
Ensure access to special characters for plugins that use them.
- **[Plenary](https://github.com/nvim-lua/plenary.nvim)**: Core lib for
functions leveraged by several plugins.
- **[Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)**:
Code-understander that enables syntax highlighting, block awareness, and
so on.

### LSP/CMP Support

- **[CMP](https://github.com/hrsh7th/nvim-cmp)**: Completion menu.
	- **[cmp-buffer](https://github.com/hrsh7th/cmp-buffer)**: Buffer text in CMP.
	- **[cmp-luasnip](https://github.com/saadparwaiz1/cmp_luasnip)**: Pull LuaSnip
	into CMP.
	- **[cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)**: LSP suggestions
	in CMP.
	- **[cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)**: Neovim's Lua API
	suggestions for CMP.
	- **[cmp-path](https://github.com/hrsh7th/cmp-path)**: Paths and dirs in CMP.
	- **[Friendly Snippets](https://github.com/rafamadriz/friendly-snippets)**:
	More snippets for CMP.
	- **[LuaSnip](https://github.com/L3MON4D3/LuaSnip)**: Snippet engine for CMP.
	- **[LSPKind](https://github.com/onsails/lspkind.nvim)**: Fancy symbols for
	CMP, and kind-based grouping.
- **[LSPConfig](https://github.com/neovim/nvim-lspconfig)**: Neovim's official
framework for enabling LSP support.
	- **[LSP Lines](https://git.sr.ht/~whynothugo/lsp_lines.nvim)**: Use lines under
	text for LSP diagnostics instead of virtual trailing lines. (_Not GH_)
	- **[Mason](https://github.com/williamboman/mason.nvim)**: Visual manager for
	LSP servers and formatters, etc.
	- **[Mason-LSPConfig](https://github.com/williamboman/mason-lspconfig)**:
	Compatibility tool to make Mason and LSPConfig play nicely.
	- **[Trouble](https://github.com/folke/trouble.nvim)**: Menu for listing
	LSP diagnostics in one place.
- **[null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim)**: Layer for
LSP and CMP extension. Also provides automatic formatting.

### Utilities

- **[Aerial](https://github.com/stevearc/aerial.nvim)**: Code outlining.
- **[Autopairs](https://github.com/windwp/nvim-autopairs)**: Automatically
pairs brackets and delimiters.
- **[Comment](https://github.com/numToStr/Comment.nvim)**: Use `gc` to toggle
comments by-line.
- **[Gitsigns](https://github.com/lewis6991/gitsigns.nvim)**: Add Git
highlighting on documents.
- **[Legendary](https://github.com/mrjones2014/legendary.nvim)**: Add a
VS Code-like command palette with keybindings and actions.
- **[mkdir](https://github.com/jghauser/mkdir.nvim)**: On saving, create parent
dirs if they don't already exist (instead of raising an error).
- **[Navigator](https://github.com/numToStr/Navigator.nvim)**: Jump between
- **[Neo-Tree](https://github.com/nvim-neo-tree/neo-tree.nvim)**: File explorer.
- **[No-Neck-Pain](https://github.com/shortcuts/no-neck-pain.nvim)**: Center a
buffer onscreen instead of to the side.
- **[Silicon](https://github.com/0oAstro/silicon.lua)**: Use standalone app
Silicon to generate screenshots of code. Useful for visual contexts where
code needs to be shown, but can't be highlighted.
- **[Surround](https://github.com/kylechui/nvim-surround)**: Keybinding
shortcuts to wrap text and textobjects with delimiters and brackets.
- **[Telescope](https://github.com/nvim-telescope/telescope.nvim)**: UI
framework and search tool.
- **[Telescope FZF](https://github.com/nvim-telescope/telescope-fzf-native.nvim)**:
Enable FZF searching inside of Telescope.
- **[ToggleTerm](https://github.com/akinsho/toggleterm.nvim)**: Enhance the
embedded terminal and create custom terminals.
- **[Which Key](https://github.com/folke/which-key.nvim)**: Popup window to
remind you about what maps are available.

### Aesthetics

- **[Alpha](https://github.com/goolord/alpha-nvim)**: Startup window.
buffers, a little more smartly than just using `<C-w>` commands.
- **[alpha-nvim-fortune](https://github.com/BlakeJC94/alpha-nvim-fortune)**:
Add quotes to the bottom of Alpha, just for fun.
- **[Bufferline](https://github.com/akinsho/bufferline.nvim)**: A prettier
line up-top for buffers/tabs.
- **[Catppuccin](https://github.com/catppuccin/nvim)**: A pastel colortheme
with lots of out-of-the-box plugin integrations.
- **[DiffView](https://github.com/sindrets/diffview.nvim)**: Tab to show the
diff since last commit.
- **[Drop](https://github.com/folke/drop.nvim)**: Animations for Alpha.
- **[Harpoon](https://github.com/thePrimeagen/harpoon)**: Skewer important
files and jump between them.
- **[indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)**:
Better `:list` settings and context highlighting.
- **[LuaLine](https://github.com/nvim-lualine/lualine.nvim)**: A pretty
statusline.
- **[Noice](https://github.com/folke/noice.nvim)**: Experimental plugin for
alerts and cmdline.
- **[Notify](https://github.com/rcarriga/nvim-notify)**: Move notifications,
alerts, etc. into popup windows instead of the bottom of the screen.
- **[Twilight](https://github.com/folke/twilight.nvim)**: Dim sections of text
that are not your focus.
- **[Zen Mode](https://github.com/folke/zen-mode.nvim)**: Toggleable mode for
uninstrusive editing.
