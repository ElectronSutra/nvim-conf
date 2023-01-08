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
			gitsigns = true,
			indent_blankline = {
				enabled = true,
			},
			mason = true,
			neotree = true,
			telescope = true,
			treesitter = true,
			which_key = true,
		},
	},
}
