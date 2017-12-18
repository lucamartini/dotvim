colorscheme base16-default-dark
:set cursorline

if system("ls /etc/arch-release" == 2)
	:set guifont=Tlwg\ Typo\ Medium\ 11
else
	:set guifont=MesloLGS\ Nerd\ Font\ Mono\ 10
endif

:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
:set guioptions-=m  "remove menu bar
