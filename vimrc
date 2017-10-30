" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

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
set hlsearch


" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
" Always display the status line, even if only one window is displayed
set laststatus=2

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

let g:airline_theme='deus'
let g:airline_powerline_fonts = 1

" cursor shape
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set ttimeoutlen=0

set history=200

