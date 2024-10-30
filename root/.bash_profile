export PATH=$HOME/bin:/opt/homebrew/bin:/usr/local/sbin:$PATH

export BASH_SILENCE_DEPRECATION_WARNING=1

[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

export PATH=/Applications/Racket\ v8.10/bin/:/Users/bor0/Library/Python/3.9/bin:$PATH

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PS1='\u:\w$ '
export TERM="xterm-color" 
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GREP_OPTIONS='--color=auto --exclude-dir=node_modules --exclude-dir=vendor --exclude-dir=dist'
export COMPOSER_DISABLE_XDEBUG_WARN=1
alias phpd="php -dxdebug.remote_autostart=On -dxdebug.idekey=123"

HISTFILESIZE=10000000

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PNPM_HOME="/Users/bor0/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

source ~/.bash_profile_private
# export PATH="/opt/homebrew/opt/bison/bin:$PATH" # latest bison, for php
