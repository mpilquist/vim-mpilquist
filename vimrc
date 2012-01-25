set nocompatible
filetype on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'vim-scripts/pbcopy.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'akhil/scala-vim-bundle'
Bundle 'msmorgan/vim-flex'

Bundle 'closetag.vim'
Bundle 'VimClojure'

Bundle 'mpilquist/vim-mpilquist'

Bundle 'millermedeiros/vim-statline'

filetype plugin indent on
