set tabstop=4
set shiftwidth=4
set expandtab
set backspace=2
set number
set splitright
set splitbelow
syntax on
set background=dark
colorscheme vividchalk


set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()

Plug 'vim-python/python-syntax'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-vividchalk'

call plug#end()

let g:python_highlight_all = 1
let g:user_emmet_leader_key=','
filetype plugin indent on
