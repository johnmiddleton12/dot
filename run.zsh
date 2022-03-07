if [ ! -d "~/.config" ]; then

    mkdir ~/.config
    mkdir ~/.config/nvim

fi

#cp ./init.vim ~/.config/nvim/init.vim

#cp ./.zshrc ~/
#cp ./.tmux.conf ~/

rm ~/.zshrc
rm ~/.tmux.conf
rm ~/.config/nvim/init.vim

ln -s $PWD/.zshrc ~/
ln -s $PWD/.tmux.conf ~/
ln -s $PWD/init.vim ~/.config/nvim/
