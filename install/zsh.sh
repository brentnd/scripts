#!/bin/sh

echo "Installing Oh My ZSH"
sudo apt-get install zsh
sudo chsh -s $(which zsh) $USERNAME
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# TODO: switch to pure theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# TODO: .zshrc customizations