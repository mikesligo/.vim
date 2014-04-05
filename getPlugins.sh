#!/bin/bash
cd ~/.vim
git submodule init
git submodule update --recursive
git submodule update --init --recursive

cd bundle/youcompleteme
./install.sh --clang-completer
