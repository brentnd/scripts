#!/bin/bash -ex

if command -v vim > /dev/null; then
  echo "vim is already installed"
else
  echo "Installing vim"
  sudo apt-get install vim
fi

DIR=~/src/github.com/brentnd
REPO=https://github.com/brentnd/.vim
mkdir -p $DIR && cd $DIR
git clone $REPO
cd .vim
make install

# Add as default editor in zshrc
grep -qF -- "^\s*export EDITOR=" ~/.zshrc || echo "
# Custom editors
export EDITOR='vim'
" >> ~/.zshrc
