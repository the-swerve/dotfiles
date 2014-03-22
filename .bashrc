[ -f ~/.bash_aliases ] && source ~/.bash_aliases
[ -f /home/big/j/.travis/travis.sh ] && source /home/big/j/.travis/travis.sh
[ -f /home/big/j/.keys ] && source /home/big/j/.keys

#Prompt and prompt colors
# 30m - Black
# 31m - Red
# 32m - Green
# 33m - Yellow
# 34m - Blue
# 35m - Purple
# 36m - Cyan
# 37m - White
# 0 - Normal
# 1 - Bold
function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local END="\[\033[0m\]"
  export PS1="$BLUE\h:\u:$END$BLUEBOLD\w$END\n$ "
}
prompt

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session

export VISUAL=vim
export EDITOR=vim

export APACHE_RUN_USER=jb
export APACHE_RUN_USER=netdev

export NODE_ENV=development

alias ls='ls --color'
LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS

### Extra bin paths
export PATH="$HOME/coding/pakcs-1.11.2/bin:/usr/local/heroku/bin:$PATH" # curry
export PATH="$HOME/.npm-packages/bin:$PATH" # npm
export PATH="$PATH:$HOME/.rvm/bin" # rvm -- it likes to be first
