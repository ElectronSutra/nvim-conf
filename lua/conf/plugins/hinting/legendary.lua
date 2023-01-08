return {
	"mrjones2014/legendary.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"stevearc/dressing.nvim",
	},
	config = {
		select_prompt = "commands",
		which_key = {
			auto_register = true,
			do_binding = false,
		},
		scratchpad = {
			view = "float",
			float_border = "single",
		},
	},
}
