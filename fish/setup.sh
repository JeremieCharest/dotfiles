#!/bin/bash

apt-add-repository ppa:fish-shell/release-2
apt-get update
apt-get install fish


### install powerline fonts
pip install -U powerline-status
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf

# valid font path : 'xset q'
powerline_fonts_dir=~/.fonts/powerline
[ -d $powerline_fonts_dir ] || mkdir $powerline_fonts_dir
mv PowerlineSymbols.otf $powerline_fonts_dir

fc-cache -f -v $powerline_fonts_dir


### configure fish
fish_dir=~/.config/fish/

mkdir -p $fish_dir

cp config.fish $fish_dir/

# install Oh-my-Fish
curl -L https://get.oh-my.fish | fish

# powerline theme
omf install bobthefish
omf theme bobthefish

cp functions/fish_prompt.fish $fish_dir/functions/

