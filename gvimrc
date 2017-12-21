colorscheme base16-default-dark
:set cursorline

:if !empty(glob("/etc/arch-release"))
	:set guifont=MesloLGS\ Nerd\ Font\ Mono\ 9
else
	:set guifont=Tlwg\ Typo\ Medium\ 11
:endif

:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
:set guioptions-=m  "remove menu bar
