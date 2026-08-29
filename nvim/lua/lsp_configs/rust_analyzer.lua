local lsp = require'lsp'

vim.lsp.config("rust-analyzer", {
    capabilities = lsp.capabilities,
	on_attach = lsp.on_attach
})


