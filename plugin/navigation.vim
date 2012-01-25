" Fold by syntax, start full open
set foldenable
set foldmethod=syntax
set foldlevelstart=99

" Search as you type
set incsearch

" More bash-like tab completion
set wildmode=longest,list,full
set wildmenu

" Return cursor to start of edit after repeat
nmap . .`[

" Ignore case on search unless search has uppercase characters
set ignorecase
set smartcase

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/tmp/cache/*,*/target/*,*/.idea/*,*/.settings/*,*/test-output/*,*/.scala_dependencies,*.class

let g:ctrlp_by_filename = 0
let g:ctrlp_dotfiles = 1

