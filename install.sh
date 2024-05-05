#!/bin/bash

./linux-config.sh

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir ~/.config
mkdir ~/.config/nvim
mkdir /sqldata

sudo ln -s -r -f ./vimrc ~/.vim/vimrc
sudo ln -s -r -f ./plugins.vim ~/.vim/plugins.vim
sudo ln -s -r -f ./keys-map.vim ~/.vim/keys-map.vim
sudo ln -s -r -f ./config.vim ~/.vim/config.vim
sudo ln -s -r -f ./coc-config.vim ~/.vim/coc-config.vim
sudo ln -s -r -f ./coc-settings.json ~/.config/nvim/coc-settings.json
sudo ln -s -r -f ./tmux.conf ~/.tmux.conf
sudo ln -s -r -f ./init.vim ~/.config/nvim/init.vim

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm ~/.zshrc
ln -s -r -f ./.zshrc ~/.zshrc

echo finishied!
