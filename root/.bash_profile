export PATH=$(brew --prefix php72)/bin:$PATH
export PATH=$HOME/bin:/usr/local/sbin:$PATH
export PATH=$(brew --prefix vim)/bin:$PATH

if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
  . $(brew --prefix)/share/bash-completion/bash_completion
fi

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PS1='\u@\H:\w$ '
export TERM="xterm-color" 
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GREP_OPTIONS='--color=auto --exclude-dir=node_modules'
export COMPOSER_DISABLE_XDEBUG_WARN=1
alias phpd="php -dxdebug.remote_autostart=On -dxdebug.idekey=123"
alias vi="vim"

HISTFILESIZE=10000000

source ~/.bash_profile_private
