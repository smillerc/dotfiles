#!/bin/bash

#Install vundle
cd $HOME
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#Copy existing vimrc file
ln -s /.vimrc ~/.vimrc
vim +PluginInstall +qall

#Configure YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
chmod +x install.py
./install.py

#Install powerline fonts
cd $HOME
git clone https://github.com/powerline/fonts.git
cd fonts
chmod +x ./install.sh
./install.sh

# Install oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Copy over existing .zshrc file from repo
ln -s /.zshrc ~/.zshrc


# Set zsh as default shell
chsh -s $(which zsh)
