local scrollbar = require("scrollbar")
local palette = require("catppuccin.palettes").get_palette "macchiato"

scrollbar.setup({
    handle = {
        color = palette.surface2,
    },
})
require("scrollbar.handlers.gitsigns").setup({})
