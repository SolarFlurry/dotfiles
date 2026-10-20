vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.HINT] = '',
            [vim.diagnostic.severity.INFO] = '',
        },
    },
})

vim.filetype.add({
    extension = {
        mcfunction = 'mcfunction'
    },
})

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.opt.laststatus = 3
    end,
})

vim.wo.number = true

vim.g.mouse = 'a'
vim.opt.encoding="utf-8"

vim.opt.swapfile = false

vim.opt.scrolloff = 7
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.showcmdloc = 'statusline'

vim.opt.wrap = false

vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

vim.opt.fileformat = "unix"

vim.g.mapleader = " "

vim.opt.fillchars = { eob = " " }

vim.keymap.set('n', "<Leader>w", "<Cmd>BufferClose!<CR>", { silent = true })
vim.keymap.set('n', "<Leader>n", "<Cmd>BufferNext<CR>", { silent = true })
-- vim.keymap.set('n', "<Leader>t", "<Cmd>terminal<CR>i", { silent = true })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>G', builtin.lsp_document_symbols, { desc = 'Telescope find symbols' })
vim.keymap.set('n', '<leader>g', builtin.live_grep, { desc = 'Telescope live grep' })

-- split operations
vim.keymap.set('n', '<leader>ss', "<cmd>sp<cr>", { silent = true })
vim.keymap.set('n', '<leader>sv', "<cmd>vs<cr>", { silent = true })
vim.keymap.set('n', '<leader>sh', "<C-w>h")
vim.keymap.set('n', '<leader>sj', "<C-w>j")
vim.keymap.set('n', '<leader>sk', "<C-w>k")
vim.keymap.set('n', '<leader>sl', "<C-w>l")
