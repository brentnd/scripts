#!/bin/bash -e


if command -v go > /dev/null; then
  echo "go is already installed"
else
  # Install golang
  sudo apt-get install golang-go
fi

# Setup gopath
grep -qF -- "export GOPATH" ~/.zshrc || cat >> ~/.zshrc << EOF
# Go path
export GOPATH=~/
export PATH=\$PATH:~/bin
EOF

# Include git-get command
GOPATH=~/ go get github.com/brentnd/git-get
