#!/bin/sh

# Set up the symlinks to vimrc and gvimrc
unlink ~/.vimrc
ln -s ~/.vim/.vimrc ~/.vimrc

unlink ~/.gvimrc
ln -s ~/.vim/.gvimrc ~/.gvimrc

