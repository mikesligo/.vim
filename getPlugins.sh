#!/bin/bash
git submodule init
git submodule update --recursive
git submodule update --init --recursive

cd bundle/youcompleteme
./install.sh --clang-completer

cd ../..
cd bundle/tern_for_vim
npm install
