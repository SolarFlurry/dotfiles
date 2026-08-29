local lsp = require("lsp")

vim.lsp.config("clangd", {
    cmd = { "clangd", "--background-index" },
    filetypes = { "c", "cpp" },
    root_markers = { "CMakeLists.txt", "build.zig" },
    on_attach = lsp.on_attach,
    capabilities = lsp.capabilities,
})
