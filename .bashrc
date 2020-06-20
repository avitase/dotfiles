if [ -n "$SSH_CLIENT" ]; then
    export PS1='[\h] \[\033]0;\u@\h:\w\007\]\[\033[01;31m\]\W \$\[\033[00m\] '
else
    export PS1='\[\033]0;\u@\h:\w\007\]\[\033[01;31m\]\W \$\[\033[00m\] '
fi

PROMPT_COMMAND+='pwd > $HOME/.currentdir'
currentDir=`cat $HOME/.currentdir`
if [ -d "$currentDir" ]; then
    cd "$currentDir"
else
    echo $HOME > $HOME/.currentdir
fi

export HISTTIMEFORMAT="%d/%m/%y %T "
export HISTSIZE=5000
export HISTFILESIZE=10000

alias vmi='vim'
alias vi='vim'
alias imv='vim'
alias ivm='vim'

alias diff='colordiff'

alias ake='make'

#setxkbmap -layout us -variant altgr-intl -option caps:escape,lv3:ralt_switch
