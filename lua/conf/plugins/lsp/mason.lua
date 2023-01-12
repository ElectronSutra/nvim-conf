local symbology = require("conf.settings.symbology")

return {
	"williamboman/mason.nvim",
	config = {
		ui = {
			border = "single",
			icons = {
				package_installed = symbology.net.downloaded,
				package_pending = symbology.net.pending,
				package_uninstalled = symbology.net.remote,
			},
			keymaps = {
				toggle_package_expand = "<CR>",
				install_package = "i",
				update_package = "u",
				check_package_version = "v",
				update_all_packages = "a",
				check_outdated_package = "C",
				uninstall_package = "D",
				cancel_installation = "x",
				apply_language_filter = "/",
			},
		},
	},
}
