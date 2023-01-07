return {
	"goolord/alpha-nvim",
	dependencies = { "BlakeJC94/alpha-nvim-fortune" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		local fortune = require("alpha.fortune")
		-- Header:
		dashboard.section.header.val = {
			"                                                  ",
			"███    ██ ███████  ██████  ██    ██ ██ ███    ███ ",
			"████   ██ ██      ██    ██ ██    ██ ██ ████  ████ ",
			"██ ██  ██ █████   ██    ██ ██    ██ ██ ██ ████ ██ ",
			"██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██ ",
			"██   ████ ███████  ██████    ████   ██ ██      ██ ",
			"                                                  ",
		}
		-- Buttons:
		dashboard.section.buttons.val = {
			dashboard.button("n", "New File", "<CMD>ene<CR>"),
			dashboard.button("e", "Explorer", "<CMD>Neotree source=filesystem position=float toggle=true<CR>"),
			dashboard.button("f", "Search For File", "<CMD>Telescope find_files<CR>"),
			dashboard.button("r", "Recent Files", "<CMD>Telescope oldfiles<CR>"),
			dashboard.button(
				"s",
				"Settings",
				"<CMD>Neotree source=filesystem position=float toggle=true dir=~/.config/nvim<CR>"
			),
			dashboard.button("q", "Quit", "<CMD>qa!<CR>"),
		}
		dashboard.section.footer.val = fortune()
		-- Initialize:
		alpha.setup(dashboard.opts)
	end,
}
