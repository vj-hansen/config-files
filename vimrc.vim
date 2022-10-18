:set number

set cursorline 
set cursorcolumn
set expandtab
set showcmd

filetype on
filetype plugin on

colorscheme industry

let g:airline#extensions#ale#enabled = 1

" VimPlug: https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'preservim/NERDTree'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
Plug 'valloric/youcompleteme'
call plug#end()

