local oil = require("oil")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

local oil_buffer = nil
local before_oil_win = nil

function toggle_oil()
    if oil_buffer then
        close_oil()
    else
        open_oil()
    end
end

function close_oil()
    vim.api.nvim_buf_delete(oil_buffer, {force = true})
end

function open_oil()
    before_oil_win = vim.api.nvim_get_current_win()
    vim.cmd("topleft vsplit")
    oil.open()
    vim.cmd("vertical resize 50")
    oil_buffer = vim.api.nvim_get_current_buf()
end

function oil_enter()
    if oil.get_cursor_entry().type ~= "file" then
        oil.select()
    else
        oil.select({ close = true })
        if before_oil_win then
            vim.api.nvim_win_close(before_oil_win, true)
        end
    end
end

vim.api.nvim_create_autocmd("BufEnter", {
    callback = function(ev)
        local ft = vim.bo[ev.buf].filetype
        if ft ~= "oil" then return end

        oil_buffer = ev.buf
    end,
})

vim.api.nvim_create_autocmd("BufWinLeave", {
    callback = function(ev)
        local ft = vim.bo[ev.buf].filetype
        if ft ~= "oil" then return end

        oil_buffer = nil
    end,
})

oil.setup{
    keymaps = {
        ["<CR>"] = { mode = 'n', callback = oil_enter },
        ["-"] = { "actions.parent", mode = 'n' },
    },
    view_options = {
        show_hidden = true,
    },
}

vim.keymap.set('n', "<Leader>j", toggle_oil)

-- require("nvim-tree").setup({
--     on_attach = function(bufnr)
--         vim.keymap.set('n', '<CR>', nvimtree_enter, { buffer = bufnr })
--         vim.keymap.set('n', "?", api.tree.toggle_help, { buffer = bufnr })
--         vim.keymap.set('n', "a", api.fs.create, { buffer = bufnr })
--         vim.keymap.set('n', "d", api.fs.remove, { buffer = bufnr })
--         vim.keymap.set('n', "r", api.fs.rename, { buffer = bufnr })
--     end,
--     diagnostics = {
--         enable = true,
--     },
--     hijack_cursor = true,
--   sort = {
--     sorter = "case_sensitive",
--   },
--   view = {
--       side = "left",
--       width = 35,
--   },
--   git = {
--
--   },
--   renderer = {
--     group_empty = true,
--     root_folder_label = ":t/../",
--     icons = {
--         glyphs = {
--             git = {
--                 untracked = "U",
--                 unstaged = "M",
--                 renamed = "R",
--                 deleted = "D",
--             },
--         },
--     },
--     indent_markers = {
--         enable = true,
--     },
--   },
--     filters = {
--         dotfiles = false,
--         git_ignored = false,
--     },
-- })
