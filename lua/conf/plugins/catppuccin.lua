return {
	"catppuccin/nvim",
	name = "catppuccin",
	config = {
		flavour = "frappe",
		styles = {
			comments = { "italic" },
			conditionals = { "bold" },
			keywords = { "bold" },
		},
		integrations = {
			aerial = true,
			gitsigns = true,
			indent_blankline = {
				enabled = true,
			},
			lsp_trouble = true,
			mason = true,
			neotree = true,
			notify = true,
			telescope = true,
			treesitter = true,
			which_key = true,
		},
	},
}
