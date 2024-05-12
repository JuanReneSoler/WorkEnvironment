#!/bin/bash

sudo pacman -Syu w3m neovim github-cli cmatrix curl htop iftop bmon neofetch sl tmux asciiquarium ranger zsh lazygit less python-pynvim which npm
# google chrome plugins 
# postman
# easy auto refesh
# gnome extensions
# dash-to-dock
# gpaste

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

if [ ! -d "~/.config" ];
then
    mkdir ~/.config
fi

if [ -d "~/Workspace" ];
then
    mkdir ~/Workspace/sqldata
fi

if [ -f "~/.zshrc" ];
then
    rm ~/.zshrc
fi

mkdir ~/.config/nvim
touch ~/.zshenv

sudo ln -s -r -f ./vimrc ~/.vim/vimrc
sudo ln -s -r -f ./plugins.vim ~/.vim/plugins.vim
sudo ln -s -r -f ./keys-map.vim ~/.vim/keys-map.vim
sudo ln -s -r -f ./config.vim ~/.vim/config.vim
sudo ln -s -r -f ./coc-config.vim ~/.vim/coc-config.vim
sudo ln -s -r -f ./coc-settings.json ~/.config/nvim/coc-settings.json
sudo ln -s -r -f ./tmux.conf ~/.tmux.conf
sudo ln -s -r -f ./init.vim ~/.config/nvim/init.vim
sudo ln -s -r -f ./.zshrc ~/.zshrc

echo finishied!
