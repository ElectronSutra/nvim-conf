local symbology = require("conf.settings.symbology")

return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = {
		-- enable_git_status = false, -- Lazygit/diffview handle git things
		use_default_mappings = false,
		default_component_configs = {
			icon = {
				folder_closed = symbology.collapsible.closed,
				folder_open = symbology.collapsible.open,
				folder_empty = symbology.collapsible.empty,
			},
			name = {
				trailing_slash = true,
			},
			git_status = {
				symbols = {
					added = symbology.git.added,
					modified = symbology.git.added,
					deleted = symbology.git.deleted,
					renamed = symbology.git.renamed,
					untracked = symbology.git.untracked,
					ignored = symbology.git.ignored,
					unstaged = symbology.git.unstaged,
					staged = symbology.git.staged,
					conflict = symbology.git.conflicted,
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
					["<BS>"] = "navigate_up",
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
					["bd"] = "buffer_delete",
				},
			},
		},
	},
}
