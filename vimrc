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

"add sudo rights to a file after opening it
"LATER: I want to make it reopen the file again with sudo rights
command W w !sudo tee % >/dev/null 
"set cc=80
