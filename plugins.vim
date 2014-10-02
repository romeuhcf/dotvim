let g:airline#extensions#tabline#enabled = 1


" Q. How can I open a NERDTree automatically when vim starts up if no files
" were specified?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

