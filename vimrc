" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

language en_US.utf8

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" line number
:set number

set history=200

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**
" display incomplete commands
set showcmd

" display completion matches in a status line
set wildmenu

" Highlight searches
set hlsearch
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
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

" airline
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
" Ale syntax check
let g:airline#extensions#ale#enabled = 1

" cursor shape
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
set ttimeoutlen=0

" Go to the next buffer even if the previous buffer is modified
set hidden

packadd! matchit
set autoindent

" nerdtree
set encoding=utf8
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let NERDTreeShowHidden = 1
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" signature + gitgutter
let g:SignatureMarkTextHLDynamic = 1

" ale
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0

" YouCompleteMe
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>

" bufMRU
" Alt-B or Alt-Shift-B to navigate buffers in insert mode and normal mode
imap <C-S-Tab> <C-O>:BufMRUPrev<CR>
imap <C-Tab> <C-O>:BufMRUNext<CR>
map <C-S-Tab> :BufMRUPrev<CR>
map <C-Tab> :BufMRUNext<CR>

" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
