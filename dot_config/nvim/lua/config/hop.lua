-- define common options
local opts = {
  silent = true, -- do not show message
  remap = false,
}

local hop = require('hop')

hop.setup { keys = 'etovxqpdygfblzhckisuran' }


local directions = require('hop.hint').HintDirection
vim.keymap.set('', 'f', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, opts)
vim.keymap.set('', 'F', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, opts)
vim.keymap.set('', 't', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, opts)
vim.keymap.set('', 'T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, opts)


vim.keymap.set('n', '<leader>s', '<Cmd>HopWord<CR>', opts)
vim.keymap.set('n', '<leader>f', '<Cmd>HopWordCurrentLine<CR>', opts)
