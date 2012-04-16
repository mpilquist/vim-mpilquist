syntax on
set number

" Show normal-mode commands as you type
set showcmd

" Show cursor and file position
set ruler

" Show whitespace as unicode chars
set listchars=tab:‣\ ,extends:…,precedes:…,nbsp:˖,trail:‿
set list

augroup trailing
   au!
   au InsertEnter * :set listchars-=trail:‿
   au InsertLeave * :set listchars+=trail:‿
augroup END

" Mark the 141st column magenta
highlight OverLength ctermbg=Magenta ctermfg=white guibg=#592929
match OverLength /\%141v./

colorscheme solarized
