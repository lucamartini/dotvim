#!/bin/sh

FOLDER=~/.vim
URL=git://github.com/lucamartini/dotvim.git 

if [ ! -d "$FOLDER" ] ; then
    git clone "$URL" "$FOLDER"
else
    cd "$FOLDER"
    git pull "$URL"
fi

cd ~/.vim/pack
./install.sh

# youcompleteme install
cd ~/.vim/pack/edit_style/start/YouCompleteMe
UPDATE=`git submodule update --init --recursive`
echo $UPDATE
if [ -n "$UPDATE" ]; then
    if [ -f "/etc/arch-release" ]; then
        ./install.py --clang-completer --js-completer --system-libclang
    else
        ./install.py --clang-completer --js-completer
    fi
fi

# Set up the symlinks to vimrc and gvimrc
unlink ~/.vimrc
ln -s ~/.vim/vimrc ~/.vimrc

unlink ~/.gvimrc
ln -s ~/.vim/gvimrc ~/.gvimrc


