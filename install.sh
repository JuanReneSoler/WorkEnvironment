#!/bin/bash

./linux-config.sh

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir ~/.config
mkdir ~/.config/nvim
mkdir ~/.config/fish

ln -s -r -f ./vimrc ~/.vim/vimrc
ln -s -r -f ./plugins.vim ~/.vim/plugins.vim
ln -s -r -f ./keys-map.vim ~/.vim/keys-map.vim
ln -s -r -f ./config.vim ~/.vim/config.vim
ln -s -r -f ./coc-config.vim ~/.vim/coc-config.vim
ln -s -r -f ./coc-settings.json ~/.config/nvim/coc-settings.json
ln -s -r -f ./config.fish ~/.config/fish/config.fish
ln -s -r -f ./tmux.conf ~/.tmux.conf
ln -s -r -f ./init.vim ~/.config/nvim/init.vim

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo finishied!
