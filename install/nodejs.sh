#!/bin/bash -e

if command -v node > /dev/null; then
  echo "nodejs is already installed"
  exit 0
fi

echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | zsh
source ~/.zshrc

nvm install --lts
