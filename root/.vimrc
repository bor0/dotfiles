syntax on
" set expandtab
" set shiftwidth=4
" set softtabstop=4
set background=dark
set ruler
set showcmd

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
