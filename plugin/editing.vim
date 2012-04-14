" Backspace over anything
set backspace=indent,eol,start

" Use 2-space tabs
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

" remap jj to escape in insert mode
inoremap jj <Esc>

" Safe semi-colon as colon
" http://vim.wikia.com/wiki/Map_semicolon_to_colon
map ; :
nnoremap ;; ;

" removes any empty spaces at end of the line when saving
"autocmd BufRead * if ! &bin | silent! %s/\s\+$//ge | silent! :0 | endif
autocmd BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" converts tabs to spaces when saving
autocmd BufWrite * if ! &bin | silent! retab | endif

" toggle paste mode (to paste properly indented text)
" http://www.terminally-incoherent.com/blog/2012/03/26/how-to-configure-vim/
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" disable swap/backup files
" http://www.terminally-incoherent.com/blog/2012/03/26/how-to-configure-vim/
set noswapfile
set nobackup
set nowb

set clipboard=unnamed

" Improve auto-complete behavior (http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE)
set completeopt=longest,menu,preview

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <C-p> pumvisible() ? '<C-p>' :
  \ '<C-p><C-r>=pumvisible() ? "\<lt>Up>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

