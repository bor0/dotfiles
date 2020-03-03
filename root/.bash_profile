export BASH_SILENCE_DEPRECATION_WARNING=1

export PATH=/usr/local/opt/php/bin:$PATH #export PATH=$(brew --prefix php)/bin:$PATH
export PATH=$HOME/bin:/usr/local/sbin:$PATH
export PATH=/usr/local/opt/vim/bin:$PATH #export PATH=$(brew --prefix vim)/bin:$PATH
export PATH=/Applications/Racket\ v7.4/bin/:$PATH

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

export NVM_DIR="$HOME/.nvm"
#[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm, a bit slow

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

alias wr="php ~/dev/woocommerce-extension-release/woorelease.php $1"

source ~/.bash_profile_private
