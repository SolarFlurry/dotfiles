local neogit = require("neogit")

neogit.setup({})

vim.keymap.set("n", "<leader>mg", "<cmd>Neogit<cr>", { desc = "Open Neogit UI"})
