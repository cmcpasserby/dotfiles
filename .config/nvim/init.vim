if has("win32")
    set runtimepath^=$HOME/vimfiles runtimepath+=$HOME/vimfiles/after
else
    set runtimepath^=$HOME/.vim runtimepath+=$HOME/.vim/after
endif

let &packpath = &runtimepath
source $HOME/.vimrc

" Proper GUI colors while in term
set termguicolors
