local vim = vim

require('vim._core.ui2').enable()
vim.o.cmdheight = 0

vim.pack.add ({
    { src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = 'main' },
    "https://github.com/kyazdani42/nvim-web-devicons",
    -- "https://github.com/romgrk/barbar.nvim", -- tab bar
    "https://github.com/nvim-lualine/lualine.nvim", -- statusline
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/windwp/nvim-autopairs",
    "https://github.com/hrsh7th/nvim-cmp", -- lsp autocomplete
    "https://github.com/hrsh7th/cmp-nvim-lsp",
    "https://github.com/nvim-telescope/telescope.nvim",
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/nvim-telescope/telescope-fzf-native.nvim",
    "https://github.com/lewis6991/gitsigns.nvim",
    "https://github.com/ray-x/lsp_signature.nvim",
    "https://github.com/petertriho/nvim-scrollbar",
    "https://github.com/hiphish/rainbow-delimiters.nvim",
    "https://github.com/MeanderingProgrammer/render-markdown.nvim",
    -- "https://github.com/sindrets/diffview.nvim",
    "https://github.com/neogitorg/neogit",
    "https://github.com/lukas-reineke/indent-blankline.nvim",
    "https://github.com/b0o/incline.nvim",
    -- "https://github.com/rachartier/tiny-cmdline.nvim",
    "https://github.com/stevearc/oil.nvim",
})

require('render-markdown').setup({})

require"common"
-- require"plugins.barbar_tabs"
require"plugins.lua_line"
require"treesitter"
require"theme"
require"plugins.oil"
require"lsp"
require("nvim-autopairs").setup {}
require"plugins.autocomplete"
require"plugins.telescope_nvim"
require"plugins.scroll_bar"
require'plugins.gitsigns'
require'plugins.lsp_signature'
require'plugins.neogit'
require'plugins.indent_blankline'
require'plugins.incline'

-- lsp
require'lsp_configs/zls'
require'lsp_configs/rust_analyzer'
require'lsp_configs/vtsls'
require'lsp_configs/bedrock_ls'

vim.lsp.enable({
    "zls",
    "rust_analyzer",
    "vtsls",
    "clangd",
    "bedrock_ls",
})
