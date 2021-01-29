set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/Wombat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/ShaderHighLight'
Plug 'mbbill/undotree'
Plug 'cespare/vim-toml'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

set termguicolors

filetype plugin indent on
syntax enable

colorscheme wombat

set cursorline
set encoding=utf-8
set guifont=JetBrains\ Mono\ NL:h12

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

" fzf binds
noremap <silent> <c-p> :GFiles<CR>
noremap <silent> <Leader>f :Files<CR>

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

" OS Clipboard
if has("clipboard")
    if has("win32")
        vnoremap <Leader>y "*y
        vnoremap <Leader>p "*p
    else 
        vnoremap <Leader>y "+y
        vnoremap <Leader>p "+p
    endif
endif

nnoremap <Leader>u :UndotreeToggle<CR>

" working dir to file
nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>

" Markdown / ToDo
function MD_Date()
    let date = strftime("%F")
    exe "normal! a" . date . "\n" . repeat("-", strlen(date)) . "\<Esc>"
endfunction

nnoremap <Leader>md :call MD_Date()<CR>
nnoremap <Leader><Space> :noh<CR>

" AirLine
let g:airline_powerline_fonts = 1

" Danger Zone
set guioptions-=T
set mouse=a

