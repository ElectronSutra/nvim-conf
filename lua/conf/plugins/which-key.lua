return {
	"folke/which-key.nvim",
	config = function()
		local wk = require("which-key")
		wk.setup({
			icons = {
				breadcrumb = "»",
				separator = "›",
			},
			window = {
				border = "single",
			},
			disable = {
				buftypes = {},
				filetypes = { "TelescopePrompt" },
			},
		})
	end,
}
