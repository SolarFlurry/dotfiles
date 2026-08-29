local lsp = require('lsp')

vim.filetype.add({
    extension = {
        mcfunction = "bc-mcfunction"
    }
})

vim.lsp.config("bedrock_ls", {
    cmd = {
        "node",
        vim.fn.expand("~/minecraft-bedrock-language-server/ide/vscode/lsp/server.js"),
        "--stdio",
    },
    filetypes = {
        "bc-mcfunction",
    },
    on_attach = lsp.on_attach,
    capabilities = lsp.capabilities,
})
