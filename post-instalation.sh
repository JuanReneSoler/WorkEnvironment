#!/usr/bin/fish

while read -l plugin
    omf install $plugin
end < plugins.fish.list
