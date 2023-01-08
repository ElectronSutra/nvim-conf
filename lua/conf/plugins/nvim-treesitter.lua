return {
	"nvim-treesitter/nvim-treesitter",
	build = function()
		local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
		ts_update()
	end,
	config = function()
		require("nvim-treesitter.configs").setup({
			indent = { enable = true },
			highlight = { enable = true },
			ensure_installed = "all",
			auto_install = true,
		})
	end,
}
