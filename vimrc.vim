:set number

set cursorline 
set cursorcolumn
set expandtab
set showcmd

filetype on
filetype plugin on

colorscheme evening

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint', 'prospector', 'flake8', 'mypy', 'bandit', 'pylama']
let g:syntastic_sh_checkers = ['shellcheck']
let g:syntastic_yaml_checkers = ['yamllint']
let g:syntastic_go_checkers = ['gofmt','golint']


" plugins:
"  https://github.com/ycm-core/YouCompleteMe
"  https://github.com/vim-syntastic/syntastic
"  https://github.com/tpope/vim-surround
"  https://github.com/tpope/vim-fugitive

