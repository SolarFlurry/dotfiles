local cmp = require"cmp"

cmp.setup({
    snippet = {
        expand = function(args)
            vim.snippet.expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then cmp.select_next_item() else fallback() end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then cmp.select_prev_item() else fallback() end
        end, { 'i', 's' }),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),

    }),
    sources = cmp.config.sources({
        { name = "nvim_lsp" }
    }, {
        { name = "buffer" }
    })
})

