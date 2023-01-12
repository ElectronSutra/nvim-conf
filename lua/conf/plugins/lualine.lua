return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = {
		options = {
			theme = "auto",
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_a = {
				{ "mode", separator = { left = "", right = "" } },
			},
			lualine_b = { "branch" },
			lualine_c = { "diff" },
			-- lualine_x = {},
			-- lualine_y = {},
			-- lualine_z = {},
		},
	},
}
-- component_separators = { left = '', right = ''},
--     section_separators = { left = '', right = ''},
