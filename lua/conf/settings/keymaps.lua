--[[
Define maps using which-key syntax:
	["first_key"] = {
		name = "name_of_group",
		["second_key_1"] = { "cmd_str", "desc" },
		["second_key_2"] = { "cmd_str", "desc" },
		etc.
	}
--]]

--#region
-- Custom functions for calling in maps
-- TODO: Pullout functions from maps further down and put them up here
-- TODO: Add a function for aerial `focus`
local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", direction = "float", close_on_exit = true })
local toggle_lazygit = function()
	lazygit:toggle()
end
local harpoon_ui = require("harpoon.ui")
local harpoon_mark = require("harpoon.mark")
local harpoon_go_to = function(i)
	-- Have to curry here b/c Neovim needs a 0-arity function to call on the map
	return function()
		harpoon_ui.nav_file(i)
	end
end
--#endregion

return {
	-- Top level specifies mode:
	--   n : normal mode
	--   v : visual mode
	n = {
		-- Overrides
		["<Esc>"] = { "<CMD>nohl<CR>", "Clear highlights" }, -- Augment esc in normal mode
		["J"] = { "mzJ`z", "Join lines" },
		["N"] = { "Nzzzv", "Previous result" },
		["n"] = { "nzzzv", "Next result" },
		["Q"] = { "gq", "Format" },
		["S"] = { "<NOP>", "Nothing" },
		["X"] = { '"_X', "Backspace" },
		["x"] = { '"_x', "Delete" },
		["<C-Q>"] = { "mzgggqG`z", "Format whole document" },
		["<C-=>"] = { "mzgg=G`z", "Autoindent whole document" },
		["<C-D>"] = { "<C-D>zz", "Halfpage down" },
		["<C-U>"] = { "<C-U>zz", "Halfpage up" },
		["<M-Y>"] = { '"+Y', "Yank until end-of-line into clipboard" },
		["<M-y>"] = { '"+y', "Yank into clipboard" },
		["<M-P>"] = { '"+P', "Paste from clipboard (preceding)" },
		["<M-p>"] = { '"+p', "Paste from clipboard (following)" },
		-- Z commands
		["Z"] = {
			name = "Windowing",
			["b"] = { "<CMD>new<CR>", "New buffer (below)" },
			["h"] = { "<CMD>NavigatorLeft<CR>", "Move ←" },
			["j"] = { "<CMD>NavigatorDown<CR>", "Move ↓" },
			["k"] = { "<CMD>NavigatorUp<CR>", "Move ↑" },
			["l"] = { "<CMD>NavigatorRight<CR>", "Move ↑" },
			["N"] = { "<CMD>tabnew<CR>", "New tab" },
			["n"] = { "<CMD>vnew<CR>", "New buffer" },
			["O"] = { "<CMD>tabonly<CR>", "Only this tab" },
			["o"] = { "<CMD>only<CR>", "Only this buffer" },
			["Q"] = "Quit this (force)", -- Default mapping, just desc
			["q"] = { "<CMD>q<CR>", "Quit this (safe)" },
			["S"] = { "<CMD>wa<CR>", "Save all" },
			["s"] = { "<CMD>w<CR>", "Save this" },
			["X"] = { "<CMD>qa!<CR>", "Quit everything (force)" },
			["W"] = { "<CMD>tabclose<CR>", "Close tab" },
			["w"] = { "<CMD>close<CR>", "Close buffer" },
			["Z"] = "Save and quit", -- Default
		},
		-- Aerial
		["<Leader>a"] = {
			name = "Aerial",
			["E"] = { "<CMD>AerialToggle!<CR>", "Toggle Aerial panel (do not jump cursor)" },
			["e"] = { "<CMD>AerialToggle<CR>", "Toggle Aerial panel" },
			-- ["f"] = { "<CMD>AerialFocus<CR>", "Jump into Aerial panel if open" },
			["N"] = { "<CMD>AerialPrev<CR>", "Jump to previous Aerial result" },
			["n"] = { "<CMD>AerialNext<CR>", "Jump to next Aerial presult" },
		},
		-- Telescope
		["<Leader>f"] = {
			name = "Telescope",
			["f"] = { "<CMD>Telescope find_files<CR>", "Open file finder" },
			["h"] = { "<CMD>Telescope help_tags<CR>", "Open help search" },
			["k"] = { "<CMD>Telescope live_grep<CR>", "Open keyword search" },
			["r"] = { "<CMD>Telescope oldfiles<CR>", "Open recent files" },
			["s"] = { "<CMD>Telescope grep_string<CR>", "Search for word" },
		},
		-- Harpoon
		["<Leader>h"] = {
			name = "Harpoon",
			["h"] = { harpoon_ui.toggle_quick_menu, "Show Harpoon skewer list" },
			["m"] = { harpoon_mark.add_file, "Skewer file in Harpoon" },
			["a"] = { harpoon_go_to(1), "Jump to file 1" },
			["1"] = { harpoon_go_to(1), "Jump to file 1" },
			["s"] = { harpoon_go_to(2), "Jump to file 2" },
			["2"] = { harpoon_go_to(2), "Jump to file 2" },
			["d"] = { harpoon_go_to(3), "Jump to file 3" },
			["3"] = { harpoon_go_to(3), "Jump to file 3" },
			["f"] = { harpoon_go_to(4), "Jump to file 4" },
			["4"] = { harpoon_go_to(4), "Jump to file 4" },
			["g"] = { harpoon_go_to(5), "Jump to file 5" },
			["5"] = { harpoon_go_to(5), "Jump to file 5" },
			["z"] = { harpoon_go_to(6), "Jump to file 6" },
			["6"] = { harpoon_go_to(6), "Jump to file 6" },
			["x"] = { harpoon_go_to(7), "Jump to file 7" },
			["7"] = { harpoon_go_to(7), "Jump to file 7" },
			["c"] = { harpoon_go_to(8), "Jump to file 8" },
			["8"] = { harpoon_go_to(8), "Jump to file 8" },
			["v"] = { harpoon_go_to(9), "Jump to file 9" },
			["9"] = { harpoon_go_to(9), "Jump to file 9" },
			["b"] = { harpoon_go_to(10), "Jump to file 10" },
			["0"] = { harpoon_go_to(10), "Jump to file 10" },
		},
		-- Modals
		["<Leader>k"] = {
			name = "Modals",
			["b"] = { "<CMD>Neotree source=buffers position=current toggle=true<CR>", "Open buffer list" },
			["d"] = { "<CMD>DiffviewOpen<CR>", "Open diff view of all files" },
			["e"] = { "<CMD>Neotree source=filesystem position=current toggle=true<CR>", "Open file explorer" },
			["g"] = { toggle_lazygit, "Open Lazygit" },
			["l"] = { "<CMD>LspInfo<CR>", "Open LSP Info" },
			["m"] = { "<CMD>Mason<CR>", "Open Mason" },
			["t"] = { "<CMD>ToggleTerm<CR>", "Open terminal" },
			["z"] = { "<CMD>Lazy<CR>", "Open Lazy" },
		},
		-- Silicon
		["<Leader>s"] = {
			name = "SiliconVisualizer",
			["c"] = {
				function()
					require("silicon").visualise_api()
				end,
				"Capture highlighted area",
			},
			["f"] = {
				function()
					require("silicon").visualise_api({ show_buf = true })
				end,
				"Capture whole buffer",
			},
			["y"] = {
				function()
					require("silicon").visualise_api({ to_clip = true })
				end,
				"Yank selected to clipboard",
			},
		},
		-- Tools and Panels
		["<Leader>t"] = {
			name = "Tools",
			["d"] = { "<CMD>TroubleToggle document_diagnostics<CR>", "Toggle diagnostics for document" },
			["i"] = { "<CMD>Twilight<CR>", "Toggle Twilight highlighting" },
			["n"] = { "<CMD>NoNeckPain<CR>", "Toggle center buffer on screen" },
			["q"] = { "<CMD>TroubleToggle quickfix<CR>", "Toggle quickfixes panel" },
			["w"] = { "<CMD>TroubleToggle workspace_diagnostics<CR>", "Toggle diagnostics for workspace" },
			["z"] = { "<CMD>ZenMode<CR>", "Toggle zen mode" },
		},
	},
	v = {
		-- Overrides
		["J"] = { ":m '>+1<CR>gv=gv", "Swap line down" },
		["K"] = { ":m '<-2<CR>gv=gv", "Swap line up" },
		["Q"] = { "gq", "Format selection" },
		["X"] = { '"_X', "Backspace" },
		["x"] = { '"_x', "Delete" },
		["<M-Y>"] = { '"+Y', "Yank until end-of-line into clipboard" },
		["<M-y>"] = { '"+y', "Yank into clipboard" },
		["<M-P>"] = { '"+P', "Paste from clipboard (preceding)" },
		["<M-p>"] = { '"+p', "Paste from clipboard (following)" },
	},
	t = {
		["<C-Esc>"] = { "<C-Bslash><C-n>", "Switch to terminal-normal mode" },
	},
}
