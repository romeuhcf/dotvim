
source ~/.vim/plugins.vim

call pathogen#infect()
call pathogen#helptags()


set mouse=a

set nocompatible " do not use vi compatibility mode. must come first because it changes other options.
set showcmd " show incomplete commands
set list " show invisibles
set listchars=tab:▸\ ,eol:¬ " use the same symbols as TextMate for tabstops and EOLs
set showmatch		" Show matching brackets.

" view settings
set number " show line numbers
set cc=120 " highlight N columns
set cursorcolumn " show highlight columns on cursor
set cursorline " highlight cursor line
set linebreak " don't break wrapped lines on words
set nowrap " set no word rap line


" search settings
set incsearch " highlight matches as you type
set ignorecase smartcase " ignore case while searching except if there's an uppercase letter
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

colorscheme molokai

" enable 256 colors in terminal
set t_Co=256

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  autocmd BufWritePre vimrc,*.sh,*.rb,*.erb,*.html,*.js,*.css,*.php,*.py,*.json :call <SID>StripTrailingWhitespaces() " remove trailing white spaces before saving (only in specified filetypes)
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


source ~/.vim/mappings.vim
