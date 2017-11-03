#!/bin/sh

rm -rf ~/.vim
git clone git://github.com/lucamartini/dotvim.git ~/.vim

cd ~/.vim

sh install.sh

cd pack
./install.sh

