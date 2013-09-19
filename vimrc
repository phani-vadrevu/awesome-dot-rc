"filetype off
"set nocp
call pathogen#infect() "plugin for easily installing other plugins
filetype plugin indent on
syntax on
map! ;; <Esc>" map ;; to Esc
:nnoremap <NL> i<CR><ESC>
set expandtab
set tabstop=4 " tab expansion 
set shiftwidth=4 " used for >> and << 
set number
set autoindent
set ruler "to display column numbers in status bar
set tw=79 "limit the width to 79, also can use gq to wrap long lines

"add sudo rights to a file after opening it
"LATER: I want to make it reopen the file again with sudo rights
command W w !sudo tee % >/dev/null 
