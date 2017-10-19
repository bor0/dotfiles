syntax on
" set expandtab
" set shiftwidth=4
" set softtabstop=4
set background=dark

" Show bar for line number, etc
set ruler
" Show typed commands so far on the bar
set showcmd

" Save undo data in a specific folder
set undofile
set undodir=~/.vim/undo/

" Highlight search
set hlsearch
" Search as you type
set incsearch

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
