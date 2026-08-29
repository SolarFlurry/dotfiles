local telescope = require("telescope")

telescope.setup({
    defaults = {
        file_ignore_patterns = {
            "node_modules",
            "%.git/",
            "build/",
            "dist/"
        },
    },
    pickers = {
        find_files = {
            hidden = true,
            no_ignore = false,
        }
    }
})

telescope.load_extension("fzf")

