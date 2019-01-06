Boro's Dev Environment
======================
Hi. This is the dev environment I'm using for developing with Automattic. To get started, just run `./install.py`.

Folders structure
-----------------
1. `root/` contains all files that will be installed.
2. The root folder of this repository contains this install script, brew packages list.

Contents
--------
This project contains various configuration files and development tools.

1. `.bash_profile` contains some bash settings that I find useful.
2. `.gitconfig` contains my own configuration for Git.
3. `.vim` and `.vimrc` contains some settings for Vim, the main editor I use.

brew.list
---------
Use `brew leaves > brew.list` to generate this list with the latest packages.
Alternatively, run `cat brew.list | xargs brew install` to install them.

For enabling brew bash, run: `sudo -s echo /usr/local/bin/bash >> /etc/shells`, and then `chsh -s /usr/local/bin/bash`.

Scripts are used with Mac OS X v10.14.2.

Boro Sitnikovski
