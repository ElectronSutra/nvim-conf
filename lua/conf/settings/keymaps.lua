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
local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", direction = "float", close_on_exit = true })
local toggle_lazygit = function()
	lazygit:toggle()
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
		-- Telescope
		["<Leader>f"] = {
			name = "Telescope",
			["f"] = { "<CMD>Telescope find_files<CR>", "Open file finder" },
			["h"] = { "<CMD>Telescope help_tags<CR>", "Open help search" },
			["k"] = { "<CMD>Telescope live_grep<CR>", "Open keyword search" },
			["s"] = { "<CMD>Telescope grep_string<CR>", "Search for word" },
		},
		-- Modals
		["<Leader>k"] = {
			name = "Modals",
			["b"] = { "<CMD>Neotree source=buffers position=current toggle=true<CR>", "Open buffer list" },
			["e"] = { "<CMD>Neotree source=filesystem position=current toggle=true<CR>", "Open file explorer" },
			["g"] = { toggle_lazygit, "Open Lazygit" },
			["l"] = { "<CMD>LspInfo<CR>", "Open LSP Info" },
			["m"] = { "<CMD>Mason<CR>", "Open Mason" },
			["t"] = { "<CMD>ToggleTerm<CR>", "Open terminal" },
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
