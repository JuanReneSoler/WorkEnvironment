#!/bin/zsh

rm ~/.zshrc
ln -s -r -f ./.zshrc ~/.zshrc

#while read -l plugin
#    omf install $plugin
#end < plugins.fish.list
