#!/usr/bin/env bash

# Create new folder in ~/.vim/pack that contains a start folder and cd into it.
#
# Arguments:
#   package_group, a string folder name to create and change into.
#
# Examples:
#   set_group syntax-highlighting
#
function set_group () {
  package_group=$1
  path="$HOME/.vim/pack/$package_group/start"
  mkdir -p "$path"
  cd "$path" || exit
}

# Clone or update a git repo in the current directory.
#
# Arguments:
#   repo_url, a URL to the git repo.
#
# Examples:
#   package https://github.com/tpope/vim-endwise.git
#
function package () {
  home=$(pwd)
  repo_url=$1
  expected_repo=$(basename "$repo_url" .git)
  if [ -d "$expected_repo" ]; then
    cd "$expected_repo" || exit
    result=$(git pull --force)
    echo "$expected_repo: $result"
  else
    echo "$expected_repo: Installing..."
    git clone -q "$repo_url"
  fi
  cd $home
}

(
  set_group git
  package https://github.com/tpope/vim-fugitive
  wait
) &

(
  set_group tpope
  package https://github.com/tpope/vim-repeat
  package https://github.com/tpope/vim-unimpaired
  package https://github.com/tpope/vim-commentary
  wait
) &

(
  set_group completion
  package https://github.com/alvan/vim-closetag 
  package https://github.com/ctrlpvim/ctrlp.vim
  wait
) &


(
  set_group gui
  package https://github.com/vim-airline/vim-airline
  package https://github.com/vim-airline/vim-airline-themes
  package https://github.com/kshenoy/vim-signature
  package https://github.com/airblade/vim-gitgutter
  package https://github.com/flazz/vim-colorschemes
  package https://github.com/pangloss/vim-javascript
  package https://github.com/haya14busa/incsearch.vim
  package https://github.com/itchyny/vim-cursorword
  wait
) &

(
  set_group edit_style
  package https://github.com/editorconfig/editorconfig-vim
  package https://github.com/Valloric/YouCompleteMe
  package https://github.com/w0rp/ale
  package https://github.com/leafgarland/typescript-vim
  wait
) &

( 
  set_group visual_plugins
  package https://github.com/scrooloose/nerdtree
  package https://github.com/dsummersl/gundo.vim
) &

(
  set_group style
  package https://github.com/Xuyuanp/nerdtree-git-plugin
  # package https://github.com/ryanoasis/vim-devicons
  package https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
  package https://github.com/weynhamz/vim-plugin-minibufexpl
  package https://github.com/chriskempson/base16-vim
  wait
) &

wait

