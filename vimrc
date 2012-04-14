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
Bundle 'sjl/gundo.vim'
Bundle 'VimClojure'

Bundle 'mpilquist/vim-mpilquist'

"Bundle 'millermedeiros/vim-statline'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic.git'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'sukima/xmledit'
Bundle 'leshill/vim-json'
Bundle 'Townk/vim-autoclose'
Bundle 'msanders/snipmate.vim'
Bundle 'mileszs/ack.vim'
" Disabled due to bugs where multiple minibugexplorer windows are opened when
" quitting buffers
" Bundle 'fholgado/minibufexpl.vim'

filetype plugin indent on
