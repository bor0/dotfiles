export PATH=$HOME/bin:/usr/local/sbin:$PATH

# macOS...
export BASH_SILENCE_DEPRECATION_WARNING=1

# Get this path from $(brew --prefix php) but avoid using the command directly because it slows down
export PATH=/usr/local/opt/php/bin:$PATH
export PATH=/usr/local/opt/vim/bin:$PATH #export PATH=$(brew --prefix vim)/bin:$PATH
export PATH=/Applications/Racket\ v8.3/bin/:$PATH
export PATH=/Applications/CoqIDE_8.12.2.app/Contents/Resources/bin/:$PATH
export PATH=/Applications/CoqIDE_8.12.2.app/Contents/MacOS/:$PATH

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PS1='\u@\H:\w$ '
export TERM="xterm-color" 
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GREP_OPTIONS='--color=auto --exclude-dir=node_modules --exclude-dir=vendor'
export COMPOSER_DISABLE_XDEBUG_WARN=1
alias phpd="php -dxdebug.remote_autostart=On -dxdebug.idekey=123"
alias vi="vim"

HISTFILESIZE=10000000

alias wr="php ~/dev/woorelease/woorelease.php $1"

source ~/.bash_profile_private
export PATH="/usr/local/opt/node@12/bin:$PATH"

#export NVM_DIR="$HOME/.nvm"
#[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
