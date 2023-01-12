local symbology = require("conf.settings.symbology")

return {
	"folke/trouble.nvim",
	config = {
		-- position = "right",
		auto_close = true,
		fold_open = symbology.collapsible.open,
		fold_closed = symbology.collapsible.closed,
		signs = {
			error = symbology.diagnostics.Error,
			warning = symbology.diagnostics.Warn,
			hint = symbology.diagnostics.Hint,
			information = symbology.diagnostics.Info,
			other = symbology.diagnostics.Other,
		},
	},
}
