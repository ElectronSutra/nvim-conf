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
		-- wk.register(require("conf.settings.keymaps"))
		for mode, maps in pairs(require("conf.settings.keymaps")) do
			wk.register(maps, { ["mode"] = mode })
		end
	end,
}
