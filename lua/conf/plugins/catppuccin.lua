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
			telescope = true,
			which_key = true,
		},
	},
}
