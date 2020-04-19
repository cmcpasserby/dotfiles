set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/Wombat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

filetype plugin indent on
syntax enable

colorscheme wombat

set encoding=utf-8
set guifont=Cascadia\ Code\ Mono\ PL:h9

set number
set relativenumber

" do not let cursor hit edge of screen
set scrolloff=10

set nobackup
set nowritebackup
set noundofile
set noswapfile

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set foldmethod=indent
set foldlevel=9

" Incremental Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" W for save
command! W :w

" Sort Lines
vnoremap <Leader>s :sort<CR>

" change code indents
vnoremap < <gv
vnoremap > >gv

" start and end of line motions
noremap H ^
noremap L g_

" do not move on * match
nnoremap * *<c-o>

" keep search matches in middle of the window
nnoremap n nzzzv
nnoremap N Nzzzv

" Same when jumping around
nnoremap g; g;zz
nnoremap g, g,zz
nnoremap <c-o> <c-o>zz

" Basic Leader Binds
if has("clipboard")
    if has("win32")
        map <Leader>y "*y
        map <Leader>p "*p
    elseif has("unix")
        map <Leader>y "+y
        map <Leader>p "+p
    endif
endif

" working dir to file
map <Leader>cd :cd %:p:h<CR>:pwd<CR>

" AirLine
let g:airline_powerline_fonts = 1

set guioptions-=T

" Danger Zone
set mouse=a

