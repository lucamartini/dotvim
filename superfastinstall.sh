#!/bin/sh

[ -e "~/.vim" ] && die "~/.vim already exists."

git clone git://github.com/lucamartini/dotvim.git ~/.vim

cd ~/.vim

sh install.sh

