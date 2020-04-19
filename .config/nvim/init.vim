set runtimepath^=$HOME/.vim runtimepath+=$HOME/.vim/after
let &packpath = &runtimepath
source $HOME/.vimrc

" Proper GUI colors while in term
set termguicolors
