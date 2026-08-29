local lsp = require'lsp'
local lspconfig = require('lspconfig')

vim.lsp.config("vtsls", {
    cmd = { "vtsls", "--stdio", },
    filetypes = { "typescript" },
    capabilities = lsp.capabilities,
    on_attach = lsp.on_attach,
})

