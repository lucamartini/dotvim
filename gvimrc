
:set cursorline

:if !empty(glob("/etc/arch-release"))
	:set guifont=UbuntuMono\ Nerd\ Font\ Mono\ 11
else
	:set guifont=Tlwg\ Typo\ Medium\ 11
:endif

:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
:set guioptions-=m  "remove menu bar
