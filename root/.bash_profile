export PATH=$(brew --prefix homebrew/php/php56)/bin:$PATH
export PATH=$HOME/bin:$HOME/bin/sugar:/usr/local/sbin:$PATH
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home"

if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
  . $(brew --prefix)/share/bash-completion/bash_completion
fi

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PS1='\u@\H:\w$ '
export TERM="xterm-color" 
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GREP_OPTIONS='--color=auto'
export COMPOSER_DISABLE_XDEBUG_WARN=1
alias phpd="php -dxdebug.remote_autostart=On -dxdebug.idekey=123"

export DEV_BASE=$HOME/dev/www
export MANGO_BASE=$HOME/dev/Mango
. $HOME/.sugarkey # defines SUGAR_LICENSE_KEY
