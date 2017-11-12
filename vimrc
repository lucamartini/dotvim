" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

filetype plugin on " plugins are enabled

language en_US.utf8

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" line number
:set number

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**
" display incomplete commands
set showcmd

" display completion matches in a status line
set wildmenu

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
" set hlsearch
set incsearch


" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
" Always display the status line, even if only one window is displayed
set laststatus=2

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Use null visual bell 
set visualbell
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

let g:airline_theme='deus'
let g:airline_powerline_fonts = 1

" cursor shape
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
set ttimeoutlen=0

set history=200

" Go to the next buffer even if the previous buffer is modified
set hidden

packadd! matchit
set autoindent

set encoding=utf8
set guifont=Knack\ Nerd\ Font\ Mono\ 9 
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let NERDTreeShowHidden = 1
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" signature + gitgutter
let g:SignatureMarkTextHLDynamic = 1
