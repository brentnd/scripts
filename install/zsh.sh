#!/bin/bash -e

if command -v zsh > /dev/null; then
  echo "zsh is already installed"
else
  echo "Installing Oh My ZSH"
  sudo apt-get install zsh
  sudo chsh -s $(which zsh) $USERNAME
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

bash "./install/nodejs.sh" -H
git clone git@github.com:sindresorhus/pure.git "$HOME/.oh-my-zsh/custom/pure" || true
sudo rm -f /usr/local/share/zsh/site-functions/prompt_pure_setup || true
sudo rm -rf /usr/local/share/zsh/site-functions/async || true
sudo ln -s "$HOME/.oh-my-zsh/custom/pure/pure.zsh" /usr/local/share/zsh/site-functions/prompt_pure_setup || true
sudo ln -s "$HOME/.oh-my-zsh/custom/pure/async.zsh" /usr/local/share/zsh/site-functions/async || true

sed -i 's/ZSH_THEME=.*/ZSH_THEME=""/' ~/.zshrc

sed -i 's/plugins=.*/plugins=(z)/' ~/.zshrc

grep -qF -- "prompt pure" ~/.zshrc || echo "
# Pure prompt
autoload -U promptinit; promptinit
prompt pure
" >> ~/.zshrc
