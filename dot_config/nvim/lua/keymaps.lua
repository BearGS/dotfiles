-- define common options
local opt = {
    noremap = true, -- non-recursive
    silent = true, -- do not show message
}

-- leader key ,
vim.g.mapleader = ','

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opt)
vim.keymap.set('n', '<C-j>', '<C-w>j', opt)
vim.keymap.set('n', '<C-k>', '<C-w>k', opt)
vim.keymap.set('n', '<C-l>', '<C-w>l', opt)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opt)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opt)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opt)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opt)

-- for nvim-tree
-- default leader key: \
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', opt)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opt)
vim.keymap.set('v', '>', '>gv', opt)


vim.keymap.set("n", "<C-u>", "9k", opt)
vim.keymap.set("n", "<C-d>", "9j", opt)

vim.keymap.set("n", "sv", ":vsp<CR>", opt)
vim.keymap.set("n", "sh", ":sp<CR>", opt)
vim.keymap.set("n", "sc", "<C-w>c", opt)
vim.keymap.set("n", "so", "<C-w>o", opt) -- close others