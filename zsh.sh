#!/bin/bash

# need to install zsh 
# also install neovim + vundle
# also ohmyzsh + powerlevel10k
# also jetbrains mono, and emojis
# also exa

sudo apt install zsh -y

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo 'ZSH_THEME="powerlevel10k/powerlevel10k"' > ~/.zshrc
