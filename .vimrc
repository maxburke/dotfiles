set nocompatible
source $VIMRUNTIME/vimrc_example.vim
behave mswin

syntax on
set expandtab
set sts=4
set sw=4
set ts=4
set autoindent
set cindent
set bs=2
set ruler
set nobackup
set backupdir=/home/max/.vimbackups

augroup filetype
  au! BufRead,BufNewFile *.ll     set filetype=llvm
  au! BufRead,BufNewFile *.llx    set filetype=llvm
augroup END

augroup filetype
  au! BufRead,BufNewFile *.td     set filetype=tablegen
augroup END

set noundofile
execute pathogen#infect()
color gruvbox

set complete-=i

if has('gui_macvim')
    anoremenu 1.1 TouchBar.-flexspace- <Nop>
    tlnoremenu 1.1 TouchBar.-flexspace- <Nop>
endif
