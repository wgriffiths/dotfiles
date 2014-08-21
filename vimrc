set modelines=0     " CVE-2007-2438
set nocompatible " Required by vundle
filetype off     " Required by vundle

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required

Plugin 'gmarik/Vundle.vim'
Plugin 'command-t'
Plugin 'vim-airline'
Plugin 'vim-fugitive'
Plugin 'vim-numbertoggle'
Bundle 'thoughtbot/vim-rspec'
Bundle 'kien/ctrlp.vim'
" Colors
Plugin 'nanotech/jellybeans.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Use the colorscheme from above
colorscheme jellybeans

syntax on                 " Enable syntax highlighting

set history=5000		" keep 500 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set autoindent
set showmatch
set nowrap
set backupdir=~/.tmp
set directory=~/.tmp " Don't clutter my dirs up with swp and tmp files
set autoread
set et
set sw=2
set smarttab
set noincsearch
set ignorecase smartcase
set relativenumber
set gdefault " assume the /g flag on :s substitutions to replace all matches in a line
set autoindent " always set autoindenting on
set bg=light
" Set the tag file search order
set tags=./tags;
set laststatus=2
" Use _ as a word-separator
" set iskeyword-=_
set formatoptions-=or
" Use Silver Searcher instead of grep
set wildmenu
set grepprg=ag
set backspace=indent,eol,start " allow backspacing over everything in insert mode
" Make the omnicomplete text readable
highlight PmenuSel ctermfg=black
match Error /\s\+$/
" Fuzzy finder: ignore stuff that can't be opened, and generated files
let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"
let g:NumberToggleTrigger="<F2>"
" Highlight the status line
highlight StatusLine ctermfg=blue ctermbg=yellow

let g:rspec_command = "!bundle exec spring rspec {spec}"
let g:CommandTMaxHeight=50
let g:CommandTMatchWindowAtTop=1

let mapleader = "\<Space>"

map <Leader>o :CommandT<CR>
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>
nnoremap <Leader>g :<C-U>Gstatus<CR>

nnoremap <Leader>a :call RunAllSpecs()<CR>
" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Don't wait so long for the next keypress (particularly in ambigious Leader
" situations.
set timeoutlen=500

" ================ Persistent Undo ==================
 " Keep undo history across sessions, by storing in file.
 " Only works all the time.
if has('persistent_undo')
 silent !mkdir ~/.vim/backups > /dev/null 2>&1
 set undodir=~/.vim/backups
 set undofile
endif

" Set gutter background to black
highlight SignColumn ctermbg=black

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Make it more obvious which paren I'm on
hi MatchParen cterm=none ctermbg=black ctermfg=yellow

