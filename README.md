Vimfiles
========

These are my VIM files. I've tried to keep it simple to install the plugins and 
keep them up to date.  There are probably sets of files that are more complete 
or better customized. (Might I suggest Janus? https://github.com/carlhuda/janus)

That being said, I've decided if I am using a tool all day, every day to do 
my job, I should understand how it works, and I should go through the effort
of understanding the plugins, installing them, configuring them, etc. This
might serve as a decent guide to customize a vim installation.

Usage
=====

    git clone . . . .vim
    cd .vim
    ruby setup.rb

This will go and download and install all of the plugins. A few words of warning:

* I've only really tested this on linux
* It will stomp on your .vimrc

Plugins
=======

* Pathogen  - for easy plugin management
* NERDTREE  - for navigation [https://github.com/scrooloose/nerdtree]
* Rails.vim - for handy rails development [https://github.com/tpope/vim-rails] 
* Syntastic - for syntax checking [https://github.com/scrooloose/syntastic/]
* ctrl-p    - for fuzzy file finding [https://github.com/kien/ctrlp.vim]
 
Cheat Sheet
===========

Some notes on some of the common commands in the installed plugins:

* `:NERDTree` - Opens pane with tree in it
* `<ctrl-p>` - Opens fuzzy finder window