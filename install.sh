#!/bin/bash

cur_dir=$(pwd)

rm -rf ~/.vim*
#Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#Copy existing . files
cd $cur_dir
rm -rf ~/.oh-my-zsh
rm ~/.vimrc
rm ~/.zshrc
ln -sf $cur_dir/vimrc ~/.vimrc
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
cd $cur_dir
ln -sf $cur_dir/zshrc ~/.zshrc



# Set zsh as default shell
chsh -s $(which zsh)
