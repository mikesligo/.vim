#!/bin/bash
cd ~
mv .vim .vim.bkp
mv .vimrc .vimrc.bkp
git clone https://github.com/mikesligo/.vim.git
ln -s .vim/.vimrc ~/
cd .vim
git submodule init
git submodule update

# update
# git pull origin master
# git submodule foreach git pull origin master
