return {
	"folke/zen-mode.nvim",
	dependencies = { "folke/twilight.nvim" },
	config = {
		window = {
			options = {
				signcolumn = "no",
			},
		},
		plugins = {
			kitty = { enabled = true },
		},
	},
}
