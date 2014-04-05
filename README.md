Personal vim setup. Uses pathogen and git submodules to get and update plugins, someday I will switch to using vundle.

Dependencies
------------

YouCompletMe requires Vim 7.3.584 with python2 support and requires some compilation tools/dev tools. See [the github](https://github.com/Valloric/YouCompleteMe) for info.

Installation
------------

 1. cd ~/.vim
 2. sh getPlugins.sh
 3. ln -s .vimrc ~/.vimrc

Updating
--------

 1. cd ~/.vim
 2. sh updatePlugins.sh

Adding plugins
---------------

 1. git submodule add [link_to_awesomeplugin.git] bundle/awesomeplugin

Removing plugins
-----------------

There's probably a better way of doing this!

 1. Remove references from .gitmodule
 2. Remove references from .git/config
 3. git rm -r --cached <path-to-module></path-to-module>
