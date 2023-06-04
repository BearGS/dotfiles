-- load options
require('options')


if vim.g.vscode then
  require('vscode.settings')

else
  -- ordinary Neovim
  -- Set colorscheme
  require('colorscheme')

  -- load keymappings
  require('keymaps')

  -- -- load Packervim
  require('plugins')

  -- -- Set LSP
  require('lsp')
end
