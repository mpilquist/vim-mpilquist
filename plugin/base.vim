" Don't try to be backwards compatible
set nocompatible

" Load file-type specific plugins and indent definitions
filetype plugin indent on

" Put temp files in common directory
set backupdir=~/.vim/backup
set directory=~/.vim/backup

set title
let &titleold=substitute(getcwd(), $HOME, "~", '')

set autoread

" Enable mouse support
set ttymouse=xterm2
set mouse=a

" Set current directory to the directory of file in active buffer
set autochdir

" press ; to issue commands in normal mode (no more shift holding)
" http://www.terminally-incoherent.com/blog/2012/03/26/how-to-configure-vim/
nnoremap ; :

" Typos
command! -bang E e<bang>
command! -bang Q q<bang>
command! -bang W w<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Wq wq<bang>
command! -bang WQ wq<bang>

