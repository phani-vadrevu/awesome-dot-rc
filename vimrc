" Phani Vadrevu
" pvadrevu@gmail.com

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"vim plugins on github
Plugin 'Lokaltog/vim-easymotion'
"Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"filetype off
"set nocp
let mapleader=" "
filetype plugin indent on
syntax on
map! ;; <Esc>" map ;; to Esc
:nnoremap <NL> i<CR><ESC>
"command for inserting a space
":nmap <space> i<space><esc>
set expandtab
set tabstop=4 " tab expansion 
set shiftwidth=4 " used for >> and << 
set number
set autoindent
set ruler "to display column numbers in status bar
set tw=95 "limit the width to 95, also can use gq to wrap long lines
set splitright  "vsplit opens a split window to the right
set hidden  "enables switching of unsaved buffers


"add sudo rights to a file after opening it
"LATER: I want to make it reopen the file again with sudo rights
command W w !sudo tee % >/dev/null 

"changes recommended in https://github.com/bling/vim-airline/wiki/FAQ
"set guifont=Inconsolata\ for\ Powerline:h12
"let g:Powerline_symbols = 'fancy'
"set encoding=utf-8
set t_Co=256
set laststatus=2
set ttimeoutlen=50
set incsearch
set hlsearch

"toggle line numbering with F8
set number
nnoremap <F8> :set nonumber!<CR>

"""""""""""""""""""""""
"Plugin Customizations
"""""""""""""""""""""""
"vim-airline display buffers
let g:airline#extensions#tabline#enabled = 1

"ctrlp.vim default mode
let g:ctrlp_cmd = "CtrlPBuffer"

"vim-easymotion
nmap s <Plug>(easymotion-s)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
let g:EasyMotion_smartcase = 1 " smart case: a -> a or A but A -> A
let g:EasyMotion_startofline = 0 "maintain horizontal cursor position for jk

"syntastic
let g:syntastic_python_flake8_args='--ignore=E501'  " ignore line length flake8 errors
