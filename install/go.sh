#!/bin/sh


if command -v go > /dev/null; then
  echo "go is already installed"
else
  # Install golang
  sudo apt-get install golang-go
fi

# Setup gopath
grep -qF -- "export GOPATH" ~/.zshrc || echo '
# Go path
export GOPATH=~/
export PATH=$PATH:~/bin
' >> ~/.zshrc
source ~/.zshrc

# Include git-get command
go get github.com/brentnd/git-get
