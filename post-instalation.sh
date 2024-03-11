#!/bin/zsh

while read -l plugin
  omf install $plugin
end < plugins.fish.list
