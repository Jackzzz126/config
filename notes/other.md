# win vim
set guifont=Consolas:h13
set backspace=indent,eol,start
colo desert
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8
set guioptions-=m
set guioptions-=T

#bash vi mmode
set -o vi

# centos tmux
setw -g window-status-current-format "#I:bash"
setw -g window-status-format "#I:bash"

# centos .bashrc
PS1="[\u:\w]\$ "

