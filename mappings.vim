let mapleader=","

nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :VroomRunTestFile<CR>
nmap <F8> :TagbarToggle<CR>

" Ruby Refactoring
:nnoremap <leader>rap  :RAddParameter<CR>
:nnoremap <leader>rcpc :RConvertPostConditional<CR>
:nnoremap <leader>rel  :RExtractLet<CR>
:vnoremap <leader>rec  :RExtractConstant<CR>
:vnoremap <leader>relv :RExtractLocalVariable<CR>
:nnoremap <leader>rit  :RInlineTemp<CR>
:vnoremap <leader>rrlv :RRenameLocalVariable<CR>
:vnoremap <leader>rriv :RRenameInstanceVariable<CR>
:vnoremap <leader>rem  :RExtractMethod<CR>

" Rspec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>


" Buffer Navigation
:noremap <C-left> :bprev<CR>
:noremap <C-right> :bnext<CR>


" Ruby debugger
" map <leader>pry orequire 'pry'; binding.pry<ESC>:w<CR>
" imap <leader>pry <CR>require 'pry'; binding.pry<ESC>:w<CR>
