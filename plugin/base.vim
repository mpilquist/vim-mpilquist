" Don't try to be backwards compatible
set nocompatible

" Load file-type specific plugins and indent definitions
filetype plugin indent on

" Put temp files in common directory
" http://stackoverflow.com/a/9528322/547212
" If you have .vim-backup in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/backup or . if all else fails.
if isdirectory($HOME . '/.vim/backup') == 0
  :silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backupdir^=./.vim-backup/
set backup

" Save your swp files to a less annoying place than the current directory.
" If you have .vim-swap in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/swap, ~/tmp or .
if isdirectory($HOME . '/.vim/swap') == 0
  :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif
set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

" viminfo stores the the state of your previous editing session
set viminfo+=n~/.vim/viminfo

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
  set undofile
endif

set title
let &titleold=substitute(getcwd(), $HOME, "~", '')

set autoread

set ttyfast

" Speed up Esc delay
set ttimeout
set ttimeoutlen=20
set notimeout

" Enable mouse support
set ttymouse=xterm2
set mouse=a

" Set current directory to the directory of file in active buffer
" set autochdir

" Use system clipboad by default
set clipboard=unnamed

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

" Disable startup message
set shortmess+=I

" Enable NeoComplCache
let g:neocomplcache_enable_at_startup = 1

