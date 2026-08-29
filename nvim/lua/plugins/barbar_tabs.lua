require("barbar").setup({
    sidebar_filetypes = {
        NvimTree = true,
    },
    icons = {
        gitsigns = {
            added = {enabled = true, icon = '+'},
            changed = {enabled = true, icon = '~'},
            deleted = {enabled = true, icon = '-'},
        }
    },
    separator = {left = '▎', right = ''},
    exclude_ft = { "NvimTree" },
})
