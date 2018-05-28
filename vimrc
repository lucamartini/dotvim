" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

language en_US.utf8
set encoding=utf8


if has('termguicolors')
	set termguicolors
endif


" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" line number
set number

set history=200

" no intro
set shortmess+=I

" tab
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set smarttab

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**
" display incomplete commands
set showcmd

" display completion matches in a status line
set wildmenu
" set wildmode=longest,list

" Highlight searches
"  nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
" Press F5 to toggle highlighting on/off, and show current value.
"  :noremap <F5> :set hlsearch! hlsearch?<CR>
"  set incsearch
set hlsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
" Always display the status line, even if only one window is displayed
set laststatus=2

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Use null visual bell 
set visualbell t_vb=

" Enable use of the mouse for all modes
set mouse=a

" airline
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
" Ale syntax check
let g:airline#extensions#ale#enabled = 1

if has('termguicolors')
	" cursor shape
	let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
	let &t_SR = "\<Esc>]50;CursorShape=2\x7"

	let &t_SI = "\<Esc>[6 q"
	let &t_SR = "\<Esc>[4 q"
	let &t_EI = "\<Esc>[2 q"
endif

set ttimeoutlen=0

" Go to the next buffer even if the previous buffer is modified
set hidden

packadd! matchit

" Copy indent from current line when starting a new line (typing <CR>)
set autoindent

" vim-mundo
nnoremap <leader>u :MundoToggle<CR>
set undofile
set undodir=~/.vim/undo

" nerdtree
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let NERDTreeShowHidden = 1
map <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" signature + gitgutter
let g:SignatureMarkTextHLDynamic = 1

" ale
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0

" YouCompleteMe
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>

" closeTag
" filenames like *.xml, *.html, *.xhtml, ...
" Then after you press <kbd>&gt;</kbd> in these files, this plugin will try to close the current tag.
let g:closetag_filenames = '*.html,*.vue'
" integer value [0|1]
" This will make the list of non closing tags case sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 1
" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'

" CtrlP
" ignore files inside .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

set background=dark
colorscheme solarized8

" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
