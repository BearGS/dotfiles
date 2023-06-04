
local bufferline = require("bufferline")
bufferline.setup{}

for i = 1, 9 do
  vim.keymap.set('n', '<leader>' .. i, function() bufferline.go_to_buffer(i, true) end)
end

vim.keymap.set('n', '<leader>j', '<Cmd>BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>k', '<Cmd>BufferLineCycleNext<CR>')
vim.keymap.set('n', 'gT', '<Cmd>BufferLineCyclePrev<CR>')
vim.keymap.set('n', 'gt', '<Cmd>BufferLineCycleNext<CR>')