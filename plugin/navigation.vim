set foldenable
set foldlevelstart=99

" Search as you type
set incsearch
set hlsearch

" pressing \<space> clears the search highlights
" " http://www.terminally-incoherent.com/blog/2012/03/26/how-to-configure-vim/
nmap <silent> <leader><space> :nohlsearch<CR>

" More bash-like tab completion
set wildmode=longest,list,full
set wildmenu

" Return cursor to start of edit after repeat
nmap . .`[

" Ignore case on search unless search has uppercase characters
set ignorecase
set smartcase

nnoremap <leader>a :Ack!<space>

set wildignore+=*/.hg/*,*/.svn/*,*/tmp/cache/*,*/target/*,*/.idea/*,*/.settings/*,*/test-output/*,*/.scala_dependencies,*.class
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

let g:ctrlp_by_filename = 0
let g:ctrlp_dotfiles = 1

nnoremap <f1> :NERDTreeToggle<CR>
