alias sd='sudo shutdown -h now'
alias sx='startx'
alias wcr='wicd-curses'
alias am='alsamixer'
alias svi='sudo vim'
alias vimrc='vim ~/.vimrc'

alias g='git'
alias v='vim'
alias d='date +'\''%A, %B %e %I:%M %p'\'''

alias l='clear ; ls'
alias ll='ls -alh'
alias lll='clear ; ls -alh'

alias ta='tmux attach'
alias tr='tmux attach -t'


alias lk='xscreensaver & xscreensaver-command -lock'
alias x='exit'
alias r='rails'

# extract any compressed file
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

# mkdir and cd into it
function mcd() {
	  mkdir -p "$1" && cd "$1";
}

# fast cd
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

# cd, clear, and list
function cdl() {
	cd "$1" ; l
}

# recursive visual listing of all dirs
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''

# quickly serve a dir with python
alias servethis="python -c 'import SimpleHTTPServer; SimpleHTTPServer.test()'"

# get column from stdin
function c() {
	awk '{print $'$1'}';
}

# commitchange stuff

alias prodcon='heroku run rails console -a commitchange'
