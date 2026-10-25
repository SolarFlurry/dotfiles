local lsp = require'lsp'

vim.g.zig_fmt_parse_errors = 0
vim.g.zig_fmt_autosave = 0

vim.lsp.config("zls", {
    cmd = { "zls" },
    filetypes = { "zig" },
    root_markers = { "build.zig" },
    on_attach = lsp.on_attach,
    capabilities = lsp.capabilities,
})

vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = { "*.zig", "*.zon" },
    callback = function(ev)
        vim.lsp.buf.format()
        vim.lsp.buf.code_action({
            context = { only = { "source.organizeImports" }},
            apply = true,
        })
    end
})

