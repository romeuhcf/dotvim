
call pathogen#infect()
call pathogen#helptags()

source ~/.vim/plugins.vim
source ~/.vim/theme.vim

set mouse=a
" set clipboard=unnamed
set clipboard=unnamedplus

set nocompatible " do not use vi compatibility mode. must come first because it changes other options.
set showcmd " show incomplete commands
set list " show invisibles
set listchars=tab:▸\ ,eol:¬ " use the same symbols as TextMate for tabstops and EOLs
set showmatch		" Show matching brackets.

" view settings
set number " show line numbers
set cc=120 " highlight N columns
set linebreak " don't break wrapped lines on words
set nowrap " set no word rap line

" search settings
set incsearch " highlight matches as you type
"set ignorecase smartcase " ignore case while searching except if there's an uppercase letter
set hlsearch " highlight matches
set scrolloff=3 " show 3 lines of context around the cursor

" file type settings
syntax on " enable syntax highlighting
filetype on " auto detect the type of file that is being edited
filetype plugin on " enable file type detection
filetype indent on " enable filetype-based indentation


" indent settings
set shiftwidth=2 " number of spaces used for (auto)indent
set expandtab " use soft tabs (spaces)
set softtabstop=2 " size of soft tabs
set autoindent " auto indent lines
set smartindent " smart (language based) auto indent


set backspace=indent,eol,start " intuitive backspacing
set fileformats=unix,mac,dos " EOL format


" backup and history settings
set history=100 " keep 100 cmdline history
set undofile " persistent undo
set undodir=~/.vim/tmp
set backup " turn on backup
set backupdir=~/.vim/backup " dir to save backup files
set directory=~/.vim/tmp " dir to keep all swap files
set laststatus=2 " show status line all the time


if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  autocmd BufWritePre *profile,vimrc,*.pp,*.rake,*.vim,*.sh,*.rb,{A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z}*file,*.haml,*.slim,*.erb,*.html,*.js,*.css,*.php,*.py,*.json :call <SID>StripTrailingWhitespaces() " remove trailing white spaces before saving (only in specified filetypes)
endif

" function to remove trailing white space (while saving cursor position)
" http://vimcasts.org/episodes/tidying-whitespace/

function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction


" use sudo to write the file
cmap w!! w !sudo tee % >/dev/null
""
"" Wild settings
""

" TODO: Investigate the precise meaning of these settings
" set wildmode=list:longest,list:full

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Ignore librarian-chef, vagrant, test-kitchen and Berkshelf cache
set wildignore+=*/tmp/librarian/*,*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/*

" Ignore rails temporary asset caches
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

source ~/.vim/statusline.vim
source ~/.vim/mappings.vim
let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'

