set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'posva/vim-vue'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-surround'
Plugin 'gregsexton/MatchTag'
Plugin 'Yggdroot/indentLine'
Plugin 'tpope/vim-fugitive'
Plugin 'easymotion/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'surround.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set encoding=utf-8
set fileencoding=utf-8
let mapleader = ','
set showcmd
set linespace=4
set nowrap
set report=1 
set guifont=Menlo:h16
syntax on
colorscheme onedark
set t_Co=256
set number
set cursorline
set cc=80
set virtualedit=onemore
set autoindent
set autochdir
set splitright
set splitbelow
set fdm=indent
set fdn=3
" set nofoldenable
set foldlevel=2
map zl zL
map zh zH

let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
hi LineNr guifg=#495161
" Adjust viewports to the same size
map <Leader>= <C-w>=
:nnoremap <C-Enter> i<CR><Esc> 
nnoremap <C-S-k> ddkP
nnoremap <C-S-j> ddp
" tab {
    set shiftwidth=4
    set tabstop=4
    set softtabstop=4
	autocmd FileType javascript,vue,jsx,html set shiftwidth=2 softtabstop=2 tabstop=2 expandtab
" }
" NerdTree {
    map <c-c> :NERDTreeToggle<CR>
    map <leader>e :NERDTreeFind<CR>
    let NERDTreeShowHidden=1
"    let NERDTreeShowBookmarks=1
"    let NERDTreeQuitOnOpen=1
"	let NERDTreeShowHidden=1
"    autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif
"    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
 
" CtrlP {
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
" }
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
" Use local vimrc if available {
    if filereadable(expand("~/.vimrc.local"))
        source ~/.vimrc.local
    endif
" }
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
