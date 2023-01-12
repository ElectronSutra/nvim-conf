local symbology = require("conf.settings.symbology")

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
vim.fn.sign_define(
	"DiagnosticSignError",
	{ text = symbology.diagnostics.Error, texthl = "DiagnosticSignError", numhl = "" }
)
vim.fn.sign_define(
	"DiagnosticSignWarn",
	{ text = symbology.diagnostics.Warn, texthl = "DiagnosticSignWarn", numhl = "" }
)
vim.fn.sign_define(
	"DiagnosticSignInfo",
	{ text = symbology.diagnostics.Info, texthl = "DiagnosticSignInfo", numhl = "" }
)
vim.fn.sign_define(
	"DiagnosticSignHint",
	{ text = symbology.diagnostics.Hint, texthl = "DiagnosticSignHint", numhl = "" }
)
