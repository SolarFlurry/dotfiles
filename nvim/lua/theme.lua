local C = require("catppuccin.palettes").get_palette("macchiato")

require("catppuccin").setup({
    flavour = "macchiato",
    integrations = {
        nvimtree = true,
        barbar = true,
        cmp = true,
        telescope = true,
        treesitter = true,
        gitsigns = true,
        rainbow_delimiters = true,
        render_markdown = true,
        lualine = {
            normal = {
                a = { bg = C.blue, fg = C.mantle, gui = "bold" },
                b = { bg = C.surface0, fg = C.blue },
                c = { bg = transparent_bg, fg = C.text },
            },

            insert = {
                a = { bg = C.green, fg = C.base, gui = "bold" },
                b = { bg = C.surface0, fg = C.green },
            },

            terminal = {
                a = { bg = C.green, fg = C.base, gui = "bold" },
                b = { bg = C.surface0, fg = C.green },
            },

            command = {
                a = { bg = C.peach, fg = C.base, gui = "bold" },
                b = { bg = C.surface0, fg = C.peach },
            },
            visual = {
                a = { bg = C.mauve, fg = C.base, gui = "bold" },
                b = { bg = C.surface0, fg = C.mauve },
            },
            replace = {
                a = { bg = C.red, fg = C.base, gui = "bold" },
                b = { bg = C.surface0, fg = C.red },
            },
            inactive = {
                a = { bg = transparent_bg, fg = C.blue },
                b = { bg = transparent_bg, fg = C.surface1, gui = "bold" },
                c = { bg = transparent_bg, fg = C.overlay0 },
            },
        },
    },
    lsp_styles = {
        underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
        },
        inlay_hints = {
            background = false,
        },
    },
    custom_highlights = function(colors)
        return {
            Normal = { bg = "none" },

            ["@string.special.symbol.mcfunction"] = { fg = colors.red },
            ["@property.mcfunction"] = { fg = colors.sky },
            ["@string.special.path.mcfunction"] = { fg = colors.red },
            ["@variable.parameter"] = { style = { "italic" } },
            
            ["NvimTreeGitIgnored"] = { fg = colors.overlay0 },
            ["CursorLineNr"] = { fg = colors.subtext0 },
            ["LineNr"] = { fg = colors.overlay1 },
            ["LspInlayHint"] = { style = { "italic" }},

            ["WinBar"] = { fg = colors.subtext1 },
            ["TinyCmdlineNormal"] = { bg = colors.mantle },

            IblIndent = { fg = colors.surface1 },
            IblScopeHighlight = { fg = colors.overlay1 },

            Diffadded = { fg = colors.green },
            Diffchanged = { fg = colors.yellow },
            Diffremoved = { fg = colors.red },

            BufferCurrentADDED = { bg = colors.surface1, fg = colors.green },
            BufferCurrentCHANGED = { bg = colors.surface1, fg = colors.yellow },
            BufferCurrentDELETED = { bg = colors.surface1, fg = colors.red },
            BufferCurrentERROR = { bg = colors.surface1, fg = colors.red },
            BufferCurrentHINT = { bg = colors.surface1 },

            BufferInactiveADDED = { bg = colors.mantle, fg = colors.green },
            BufferInactiveCHANGED = { bg = colors.mantle, fg = colors.yellow },
            BufferInactiveDELETED = { bg = colors.mantle, fg = colors.red },
            BufferInactiveERROR = { bg = colors.mantle, fg = colors.red },
            BufferInactiveHINT = { bg = colors.mantle },

            BufferVisibleADDED = { bg = colors.mantle, fg = colors.green },
            BufferVisibleCHANGED = { bg = colors.mantle, fg = colors.yellow },
            BufferVisibleDELETED = { bg = colors.mantle, fg = colors.red },
            BufferVisibleERROR = { bg = colors.mantle, fg = colors.red },
            BufferVisibleHINT = { bg = colors.mantle },
        }
    end
})

vim.cmd.colorscheme("catppuccin")

