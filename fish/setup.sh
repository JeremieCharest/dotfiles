#!/bin/bash

apt-add-repository ppa:fish-shell/release-2
apt-get update
apt-get install fish

fish_dir=~/.config/fish/

mkdir -p $fish_dir

cp config.fish $fish_dir/

# install Oh-my-Fish
curl -L https://get.oh-my.fish | fish

# powerline theme
omf install bobthefish
omf theme bobthefish

cp functions/fish_prompt.fish $fish_dir/functions/

