set number
set expandtab
set showcmd
set noswapfile
set autoread
set ruler
set lazyredraw
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set laststatus=2

filetype on
filetype plugin on

colorscheme lunaperche

command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" VimPlug: https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'preservim/NERDTree'
Plug 'airblade/vim-gitgutter'
Plug 'lurst/austere.vim'
Plug 'tpope/vim-fugitive'
Plug 'rust-lang/rust.vim'
Plug 'davidhalter/jedi-vim'
Plug 'w0rp/ale'
Plug 'valloric/youcompleteme'
Plug 'itchyny/lightline.vim'
call plug#end()

" Ale
let g:ale_set_highlights = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:airline#extensions#ale#enabled = 1

" Jedi
let g:jedi#auto_vim_configuration = 0
let g:jedi#goto_assignments_command = "<leader>a"
let g:jedi#usages_command = "<leader>u"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#popup_on_dot = 0

" NERDTRee
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35

" Lightline
let g:lightline = {
      \ 'colorscheme': 'powerlineish',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'] ]
      \ },
      \ 'component': {
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*FugitiveHead")?FugitiveHead():""}'
      \ },
      \ 'component_visible_condition': {
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*FugitiveHead") && ""!=FugitiveHead())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
      \ }

" colorscheme austere
