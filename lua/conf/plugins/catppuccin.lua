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
			mason = true,
			neotree = true,
			telescope = true,
			which_key = true,
		},
	},
}
