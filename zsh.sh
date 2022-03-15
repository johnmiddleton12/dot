#!/bin/bash

# need to install zsh 
# also install neovim + vundle
# also ohmyzsh + powerlevel10k
# also jetbrains mono, and emojis - nerdfonts jetbrains font
# also exa

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mkdir ~/nvim
mv nvim.appimage ~/nvim/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

sudo apt install exa -y

sudo apt install zsh -y

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
