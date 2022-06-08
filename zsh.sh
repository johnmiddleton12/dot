#!/bin/bash

# also jetbrains mono, and emojis - nerdfonts jetbrains font
# also exa - fix exa install, need hard link instead

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mkdir ~/nvim
mv nvim.appimage ~/nvim/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#sudo apt install exa -y

curl -LO https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-v0.10.1.zip
sudo apt install unzip -y
unzip exa-linux-x86_64-v0.10.1.zip
rm -r man
rm -r completions
cp bin/exa /usr/bin/
rm -r bin
rm exa-linux-x86_64-v0.10.1.zip

sudo apt install zsh -y

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
