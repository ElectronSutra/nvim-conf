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
			mason = true,
			neotree = true,
			telescope = true,
			treesitter = true,
			which_key = true,
		},
	},
}
