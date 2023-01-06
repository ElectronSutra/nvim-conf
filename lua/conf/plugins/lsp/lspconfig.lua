return {
	"neovim/nvim-lspconfig",
	dependencies = {
		require("conf.plugins.lsp.mason-lspconfig"),
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local mlsp = require("mason-lspconfig")
		local lspconfig = require("lspconfig")
		local default_capabilities = require("cmp_nvim_lsp").default_capabilities()
		local default_on_attach = function(_, bufnr)
			local opts = { noremap = true, silent = true, buffer = bufnr }
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		end

		mlsp.setup_handlers({
			-- Default handler
			function(server_name)
				lspconfig[server_name].setup({
					capabilities = default_capabilities,
					on_attach = default_on_attach,
				})
			end,
			-- Special handlers
			["sumneko_lua"] = function()
				lspconfig["sumneko_lua"].setup({
					capabilities = default_capabilities,
					on_attach = default_on_attach,
					settings = {
						Lua = {
							diagnostics = { globals = { "vim" } },
							workspace = {
								library = {
									[vim.fn.expand("$VIMRUNTIME/lua")] = true,
									[vim.fn.stdpath("config") .. "/lua"] = true,
								},
							},
						},
					},
				})
			end,
		})
	end,
}
