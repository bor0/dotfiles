Boro's Dev Environment
======================
Hi. This is the dev environment I'm using for developing SugarCRM. To get started, just run `./install.py`.

Folders structure
-----------------
1. `root/` contains all files that will be installed.
2. The root folder of this repository contains this install script, brew packages list.

Contents
--------
This project contains various configuration files and development tools.

1. `.bash_profile` contains some bash settings that I find useful.
2. `.gitconfig` contains my own configuration for Git.
3. `.my.cnf` (`.mysql_init`) contains config file for MySQL, used by some bin files.
4. `.vim` and `.vimrc` contains some settings for Vim, the main editor I use.
5. `bin/` and `bin/sugar/`, check the README of those folders.

brew.list
---------
Use `brew leaves > brew.list` to generate this list with the latest packages.
Alternatively, run `cat brew.list | xargs brew install` to install them.

Scripts are used with Mac OS X v10.11.5.

Boro Sitnikovski
