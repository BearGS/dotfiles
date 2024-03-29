-- define your colorscheme here

local onedark = require('onedark')

onedark.setup {
    style = 'cool'
}
onedark.load()

-- local colorscheme = 'monokai_pro'
local colorscheme = 'onedark'

local is_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not is_ok then
    vim.notify('colorscheme ' .. colorscheme .. ' not found!')
    return
end

