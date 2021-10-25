set tabstop=4
set shiftwidth=4
set expandtab
set backspace=2
set number
set relativenumber
set splitright
set splitbelow
set hidden
set path+=**
set wildmenu
syntax on
set background=dark
colorscheme vividchalk
set pumheight=3


set nocompatible
nnoremap <F10> <c-w>gf
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()

Plug 'vim-python/python-syntax'
Plug 'mattn/emmet-vim'
Plug 'valloric/youcompleteme'
"Plug 'preservim/nerdtree'

call plug#end()

let g:python_highlight_all = 1
let g:user_emmet_leader_key = ','
filetype plugin indent on

let java_highlight_functions = 1
let java_highlight_all = 1
highlight link javaScopeDecl Statement
highlight link javaType Type
highlight link javaDocTags PreProc


"autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

command! MakeTags !ctags -R .

let g:netrw_banner=0
let g_netrw_browse_split=4
let g_netrw_altv=1
let g_netrw_liststyle=3
let g_netrw_list_hide=netrw_gitignore#Hide()
let g_netrw_list_hide.=',\(^\|\s\s\)\zs\.\S+'

"nmap <C-t> :NERDTreeToggle<CR>
"nmap <C-h> <c-w>w
nmap <C-p> :find<Space> 
nmap <C-l> :buffers<CR>:buffer<Space>
