"" vim: set foldlevel=20 foldmethod=marker:
""""""""""""""""""""""""""""""""""""""""
" NEOVIM config
""""""""""""""""""""""""""""""""""""""""
"-------vim-plug {{{
" curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"---------------------------------------
call plug#begin('~/.vim/plugged/autoload')
" common
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tomtom/tcomment_vim'
Plug 'pbrisbin/vim-mkdir'
Plug 'easymotion/vim-easymotion'
Plug 'danro/rename.vim', { 'on': 'Rename' }
"Plug 'w0rp/ale'
Plug 'mileszs/ack.vim'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'junegunn/vim-easy-align', { 'on': 'EasyAlign' }
Plug 'metakirby5/codi.vim', { 'on': 'Codi' }
Plug 'drmingdrmer/xptemplate'
Plug 'diepm/vim-rest-console', { 'for': 'rest' }
Plug 'Yggdroot/indentLine'
" Plug 'gregsexton/MatchTag'
Plug 'Valloric/MatchTagAlways'
Plug 'jiangmiao/auto-pairs'
" Plug 'Raimondi/delimitMate'
" eye candy
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
" Plug 'mhartington/oceanic-next'
" Plug 'joshdick/onedark.vim'
" dev specific
Plug 'Valloric/YouCompleteMe'
" Plug 'ternjs/tern_for_vim'
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'othree/html5.vim', { 'for': ['html', 'eruby', 'vue'] }
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'eruby', 'vue', 'scss', 'javascript.jsx', 'typescript.jsx'] }
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'html', 'vue'] }
Plug 'peitalin/vim-jsx-typescript'
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fireplace'
Plug 'eraserhd/parinfer-rust'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'posva/vim-vue', { 'for': 'vue' }
Plug 'vim-scripts/nginx.vim'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'solarnz/thrift.vim', { 'for': 'thrift' }
Plug 'mxw/vim-jsx'
Plug 'SirVer/ultisnips', { 'for': ['jsx', 'javascript', 'javascript.jsx', 'typescript.jsx']}
Plug 'BearGS/vim-react-snippets', { 'for': ['javascript', 'javascript.jsx', 'typescript.jsx'] }

" Plug 'tpope/vim-rails'
" Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
" Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
Plug 'leafgarland/typescript-vim', { 'for': ['typescript', 'ts', 'tsx' ] }
" Plug 'mhartington/nvim-typescript', { 'for': ['typescript', 'ts', 'tsx' ] }
" Plug 'Shougo/deoplete.nvim', { 'do': 'vim +UpdateRemotePlugins +qall' }
" Plug 'tikhomirov/vim-glsl', { 'for': 'glsl' }
call plug#end()
"}}}

"-------clear autocmds {{{
"---------------------------------------
augroup vimrc
  autocmd!
"}}}
augroup END

"-------fzf.vim {{{
"---------------------------------------
nnoremap <c-p> :FZF<cr>
"}}}

"-------xptemplate {{{
"---------------------------------------
let g:xptemplate_vars="author=xgs&email=alexbear33821@gmail.com"
"}}}

"-------delimitMate {{{
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
au FileType clojure let b:delimitMate_autoclose = 0
"}}}

"-------undo tree {{{
nnoremap <F1> :UndotreeToggle<cr>
let g:undotree_SetFocusWhenToggle = 1
"}}}

"-------ale {{{
"---------------------------------------
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = 'Δ'
let g:ale_echo_msg_format = '|%linter%| %s'
hi link ALEErrorSign GruvboxRedSign
hi link ALEWarningSign GruvboxYellowSign
"}}}
"--------deoplete {{{
" let g:deoplete#enable_at_startup = 1
"}}}

"-------airline {{{
"---------------------------------------
" enable tabline
let g:airline_theme='gruvbox'
" let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
"}}}

"-------vim-javascript {{{
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
" let g:javascript_conceal_function   = "ƒ"
" let g:javascript_conceal_null       = "ø"
" let g:javascript_conceal_this       = "@"
" let g:javascript_conceal_return     = "⇒" "⇒ ⇐ ↪ ➯ ➾
" let g:javascript_conceal_undefined  = "¿"
" let g:javascript_conceal_NaN        = "ℕ"
" let g:javascript_conceal_prototype  = "#"
" let g:javascript_conceal_static     = "•"
" let g:javascript_conceal_super      = "Ω"
let g:javascript_plugin_jsdoc = 1
set conceallevel=1
"}}}

autocmd BufNewFile,BufRead *.tsx set filetype=typescript.jsx

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'javascript.jsx': 1,
    \ 'typescript.jsx': 1
    \}

"-------emmet-vim {{{
"---------------------------------------
let g:user_emmet_install_global = 0
au vimrc FileType html,eruby,vue,javascript.jsx,typescript.jsx EmmetInstall
au vimrc FileType css,scss EmmetInstall
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\  'typescript.jsx' : {
\      'extends' : 'jsx',
\  },
\}
"}}}

let g:tern_show_argument_hints="on_hold"
let g:tern_map_keys=1
let g:tern_map_prefix=","

let g:UltiSnipsExpandTrigger="<C-l>"

let g:ReactSnippetsSemicolon=1

"-------rainbow_parentheses {{{
"---------------------------------------
augroup rainbow_lisp
  autocmd!
  autocmd FileType lisp,clojure,scheme RainbowParentheses
augroup END
"}}}

"-------colorscheme {{{
"---------------------------------------
 silent! colorscheme gruvbox
" silent! colorscheme OceanicNext
" silent! colorscheme onedark
set background=dark
"}}}

"-------buffer switching {{{
"---------------------------------------
" nnoremap <tab> :bn<CR>
nnoremap <s-tab> :bp<CR>
"}}}
"-------ex mode alias {{{
"---------------------------------------
" sudo save
cnoremap w!! w !sudo tee > /dev/null %
" current directory
cnoremap %% <C-R>=expand('%:h').'/'<CR>
"}}}

"-------encoding && line ending {{{
"---------------------------------------
set fileformat=unix
set fileformats=unix,dos
" set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"}}}

"-------vimrc editing {{{
"---------------------------------------
nnoremap <Leader>e :e $MYVIMRC<CR>
" When vimrc is edited, reload it
au vimrc BufWritePost $MYVIMRC source <afile> | AirlineRefresh
"}}}

"-------tab config {{{
"---------------------------------------
set expandtab
set ts=2 sw=2 sts=2
au vimrc FileType c setlocal ts=4 sw=4 sts=4
"}}}

"-------terminal escape {{{
"---------------------------------------
tnoremap <Esc> <C-\><C-n>
"}}}

"-------python omnicomplete {{{
"---------------------------------------
au vimrc FileType python set omnifunc=python3complete#Complete
"}}}

"-------general {{{
"---------------------------------------
filetype plugin indent on    " required
set encoding=utf-8
set fileencoding=utf-8
let mapleader = ','
set showcmd
set linespace=4
set nowrap
set report=1 
set cc=80
" 高亮匹配符号
" hi MatchParen ctermbg=DarkRed guibg=white

syntax on
set hlsearch
set hidden                          " switch with buffer unsaved
set relativenumber number           " nice line number
set cursorline                      " highlight current line
" set list                            " show unvisible chars
" set listchars=eol:¬,tab:▸\ ,trail:· " add newline char

" set inccommand=nosplit          " show command effect on typing(nvim 0.1.7)
set fdm=indent
set fdn=3
set foldlevel=2
set mouse=a                     " disable mouse
set clipboard+=unnamedplus      " use system clipboard
set termguicolors               " enable true color
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
hi LineNr guifg=#495161
" Adjust viewports to the same size
map <Leader>= <C-w>=
nnoremap <C-\> i<CR><Esc>
nnoremap <C-S-k> ddkP
nnoremap <C-S-j> ddp
xnoremap <  <gv
xnoremap >  >gv

" buffer {
  nnoremap <leader>l :ls<CR>
"    nnoremap bd :bd<CR>
  nnoremap <leader>1 :1b<CR>
  nnoremap <leader>2 :2b<CR>
  nnoremap <leader>3 :3b<CR>
  nnoremap <leader>4 :4b<CR>
  nnoremap <leader>5 :5b<CR>
  nnoremap <leader>6 :6b<CR>
  nnoremap <leader>7 :7b<CR>
  nnoremap <leader>8 :8b<CR>
  nnoremap <leader>9 :9b<CR>
  nnoremap <leader>0 :10b<CR>
" }
noremap <C-L> <Esc>:tabnext<CR>
noremap <C-H> <Esc>:tabprevious<CR>
map <F3> a<C-R>=strftime('%c')<CR><Esc>
"去掉search搜索结果高亮
nnoremap <CR> :noh<CR><CR>
" Easymotion {
"
  let g:EasyMotion_smartcase = 1
  "let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
  map <Leader><leader>h <Plug>(easymotion-linebackward)
  map <Leader><Leader>j <Plug>(easymotion-j)
  map <Leader><Leader>k <Plug>(easymotion-k)
  map <Leader><leader>l <Plug>(easymotion-lineforward)
  " 重复上一次操作, 类似repeat插件, 很强大
  map <Leader><leader>. <Plug>(easymotion-repeat)
" }
"}}}

set diffopt+=vertical

let g:ackprg = 'ag --nogroup --nocolor --column'
