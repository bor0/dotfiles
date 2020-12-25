#!/bin/bash
mkdir -p ~/.vim/pack/coq/start
git clone https://github.com/whonore/Coqtail.git ~/.vim/pack/coq/start/Coqtail
vim +helptags\ ~/.vim/pack/coq/start/Coqtail/doc +q
