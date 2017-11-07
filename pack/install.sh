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
  repo_url=$1
  expected_repo=$(basename "$repo_url" .git)
  if [ -d "$expected_repo" ]; then
    cd "$expected_repo" || exit
    result=$(git pull --force)
    echo $expected_repo
    pwd
    echo "$expected_repo: $result"
  else
    echo "$expected_repo: Installing..."
    git clone -q "$repo_url"
  fi
}

(
  set_group git
  package https://github.com/tpope/vim-fugitive
  wait
) &


(
  set_group gui
  package https://github.com/vim-airline/vim-airline
  package https://github.com/vim-airline/vim-airline-themes
  package https://github.com/kshenoy/vim-signature
  wait
) &

(
  set_group edit_style
  package https://github.com/editorconfig/editorconfig-vim
  package https://github.com/Valloric/YouCompleteMe
  wait
) &

(
  set_group style
  package https://github.com/scrooloose/nerdtree
  package https://github.com/Xuyuanp/nerdtree-git-plugin
  package https://github.com/ryanoasis/vim-devicons
  wait
) &

wait

