return {
	url = "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
	name = "lsp_lines",
	config = function()
		local lines = require("lsp_lines")
		lines.setup()
	end,
}
