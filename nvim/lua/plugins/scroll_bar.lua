local scrollbar = require("scrollbar")
local palette = require("catppuccin.palettes").get_palette "macchiato"

scrollbar.setup({
    providers = {
        gitsigns = true,
    },
    scrollbar = {
        thumb = {
            highlight = { bg = palette.surface1 },
        },
    },
    exclude = {
        filetypes = { oil = true }
    }
})
