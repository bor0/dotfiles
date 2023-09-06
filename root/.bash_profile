export PATH=$HOME/bin:/opt/homebrew/bin:/usr/local/sbin:$PATH

export BASH_SILENCE_DEPRECATION_WARNING=1

export PATH=/Applications/Racket\ v8.10/bin/:$PATH

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PS1='\u@\H:\w$ '
export TERM="xterm-color" 
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GREP_OPTIONS='--color=auto --exclude-dir=node_modules --exclude-dir=vendor'
export COMPOSER_DISABLE_XDEBUG_WARN=1
alias phpd="php -dxdebug.remote_autostart=On -dxdebug.idekey=123"

HISTFILESIZE=10000000

source ~/.bash_profile_private
