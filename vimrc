execute pathogen#infect()

set tabstop=8
set expandtab
set softtabstop=3
set shiftwidth=3
set number
set autoindent
syntax on
filetype indent on
filetype plugin on

set t_Co=256
" set termguicolors

let g:airline_powerline_fonts=1

colorscheme onedark

inoremap jk <ESC>
imap jk <Plug>(PearTreeFinishExpansion)
inoremap @@ <cr>Billy Boyle<cr>(250) 888-5702<cr>boyleb@hotmail.com<cr>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :w<cr>:source $MYVIMRC<cr>

set noshowmode
