" Q. How can I open a NERDTree automatically when vim starts up if no files
" were specified?
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" Q. How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" Enable syntastic syntax checking
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_enable_signs=1
let g:syntastic_check_on_open=1
let g:syntastic_auto_jump=0
let g:syntastic_enable_highlighting=1

let g:user_emmet_leader_key='<C-A>'


set rtp+=~/.fzf
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0



" GDiff in vertical
set diffopt+=vertical
