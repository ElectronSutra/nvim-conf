return {
	"stevearc/aerial.nvim",
	config = {
		backends = { "treesitter", "lsp" },
		layout = {
			default_direction = "prefer_left",
			placement = "window",
		},
		lazy_load = false, -- Lazy already handles this
		float = {
			border = "single",
		},
	},
}
