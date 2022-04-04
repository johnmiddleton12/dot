if [ ! -d "~/.config" ]; then

    mkdir ~/.config
    mkdir ~/.config/nvim

fi

# get powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

rm ~/.p10k.zsh
rm ~/.zshrc
rm ~/.tmux.conf
rm ~/.config/nvim/init.vim

ln -s $PWD/.p10k.zsh ~/
ln -s $PWD/.zshrc ~/
ln -s $PWD/.tmux.conf ~/
ln -s $PWD/init.vim ~/.config/nvim/

exec zsh
chsh
