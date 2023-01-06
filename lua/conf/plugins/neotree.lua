return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = {
		use_default_mappings = false,
		default_component_configs = {
			icon = {
				folder_closed = " ",
				folder_open = " ",
				folder_empty = " ",
			},
			name = {
				trailing_slash = true,
			},
			git_status = {
				symbols = {
					added = "A",
					modified = "M",
					deleted = "D",
					renamed = "R",
					untracked = "U",
					ignored = "I",
					unstaged = "~",
					staged = "+",
					conflict = "!",
				},
			},
		},
		filesystem = {
			window = {
				mappings = {
					["<Space>"] = "toggle_node",
					["<CR>"] = "open",
					["q"] = "close_window",
					["<Esc>"] = "close_window",
					["g?"] = "show_help",
					["E"] = "expand_all_nodes",
					["W"] = "close_all_nodes",
					["-"] = "navigate_up",
					["<S-CR>"] = "set_root",
					["H"] = "toggle_hidden",
					["f"] = "fuzzy_finder",
					["<C-x>"] = "clear_filter",
					["N"] = "prev_git_modified",
					["n"] = "next_git_modified",
					["O"] = "open_tabnew",
					["o"] = "open_vsplit",
					["A"] = "add_directory",
					["a"] = "add",
					["x"] = "delete",
					["r"] = "rename",
					["d"] = "cut_to_clipboard",
					["y"] = "copy_to_clipboard",
					["p"] = "paste_from_clipboard",
					["m"] = "move",
					["<C-r>"] = "refresh",
					["P"] = "toggle_preview",
				},
			},
		},
		buffers = {
			window = {
				mappings = {
					["<Space>"] = "toggle_node",
					["<CR>"] = "open",
					["q"] = "close_window",
					["<Esc>"] = "close_window",
					["g?"] = "show_help",
					["x"] = "buffer_delete",
					["bd"] = "buffer_delete"
				},
			},
		},
		git_status = {
			window = {
				mappings = {
					["<Space>"] = "toggle_node",
					["<CR>"] = "open",
					["q"] = "close_window",
					["<Esc>"] = "close_window",
					["g?"] = "show_help",
					["A"] = "git_add_all",
					["a"] = "git_add_file",
					["u"] = "git_unstage_file",
					["r"] = "git_revert_file",
					["c"] = "git_commit",
					["P"] = "git_push",
				},
			},
		},
	}
}
