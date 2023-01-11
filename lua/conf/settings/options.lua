vim.opt.autoindent = true
vim.opt.colorcolumn = "80"
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.guifont = "MonoLisa,Iosevka"
vim.opt.ignorecase = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.signcolumn = "yes:1"
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.wrap = false

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Settings for specific plugins
vim.diagnostic.config({ virtual_text = false }) -- Let lsp_lines handle the errors instead
