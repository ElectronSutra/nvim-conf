return {
	url = "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
	name = "lsp_lines",
	config = function()
		local lines = require("lsp_lines")
		lines.setup()
		vim.diagnostic.config({ virtual_text = false, virtual_lines = { only_current_line = true } }) -- Let lsp_lines handle the errors instead
	end,
}
