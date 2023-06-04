local builtin = require('telescope.builtin')

-- 我将 leader + / 设置为模糊搜索当前文件内容, Ctrl-P 设置为查找文件, Ctrl-O 设置为打开当前文件的符号; 
-- gs 在普通模式下设置为使用全词匹配搜索光标下的词 (通过参数 word_match = '-w'), 
-- visual 模式下设置为不使用全词匹配搜索选定内容.
vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find)
vim.keymap.set('n', '<C-p>', builtin.find_files)
-- vim.keymap.set('n', '<C-o>', builtin.current_buffer_tags)
vim.keymap.set('n', 'gs', function()
    builtin.grep_string({word_match = '-w'})
end)

vim.keymap.set('v', 'gs', function()
    vim.cmd.normal('"fy')
    builtin.grep_string({search = vim.fn.getreg('"f')})
end)



local previewers = require('telescope.previewers')
local themes = require('telescope.themes')

local delta = previewers.new_termopen_previewer({
  get_command = function(entry)
    if entry.status == '??' or 'A ' then
      return { 'git', 'diff', entry.value }
    end

    return { 'git', 'diff', entry.value .. '^!' }
  end
})

vim.keymap.set('n', '<Leader>Gs', function() 
  builtin.git_status({ previewer = delta, layout_strategy = 'vertical' }) 
end)


-- Telescope 可定制性很强. 例如全局搜索, 有的时候我们需要全词匹配, 有时需要区分大小写, 有时需要开启正则表达式. 我的设置是利用 vim 的 count 机制: 执行命令前可以先按一串数字表示这个命令重复多少遍. 对于自定义映射, 我们自然可以获取到这串数字. 不过我的定义不是表示重复多少遍, 而是用于设置选项: 如果按过 1, 则表示开启正则匹配; 如果按过 2, 则表示开启全词匹配; 如果按过 3, 则表示区分大小写.
-- function live_grep_opts(opts)
--   local flags = tostring(vim.v.count)
--   local additional_args = {}
--   local prompt_title = 'Live Grep'
--   if flags:find('1') then
--       prompt_title = prompt_title .. ' [.*]'
--   else
--       table.insert(additional_args, '--fixed-strings')
--   end
--   if flags:find('2') then
--       prompt_title = prompt_title .. ' [w]'
--       table.insert(additional_args, '--word-regexp')
--   end
--   if flags:find('3') then
--       prompt_title = prompt_title .. ' [Aa]'
--       table.insert(additional_args, '--case-sensitive')
--   end

--   opts = opts or {}
--   opts.additional_args = function() return additional_args end
--   opts.prompt_title = prompt_title
--   return opts
-- end

-- vim.keymap.set('n', '<leader>s', function() builtin.live_grep(utils.live_grep_opts{}) end)