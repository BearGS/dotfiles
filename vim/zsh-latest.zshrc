#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
alias python2='/System/Library/Frameworks/Python.framework/Versions/2.7/bin/python2.7'
alias python3='/Library/Frameworks/Python.framework/Versions/3.6/bin/python3.6'
alias atom='/Applications/Atom.app/Contents/MacOS/Atom'
alias c="clear"
alias e="vim"
alias fep="cooky"
alias fep-init="cooky-init"
alias fep-list="cooky-list"
DISABLE_LS_COLORS="true"
# plugins=(git)

#alias for nnpm
alias nnpm="npm --registry=http://r.tools.elenet.me \
  --cache=$HOME/.npm/.cache/nnpm \
  --disturl=http://r.tools.elenet.me/mirrors/node \
  --userconfig=$HOME/.nnpmrc"

export PATH="$HOME/.yarn/bin:$PATH"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#alias for cnpm
alias cnpm="nnpm --registry=http://r.tools.elenet.me \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=http://r.tools.elenet.me/mirrors/node \
  --userconfig=$HOME/.cnpmrc"

# export NVM_DIR=~/.nvm
# source ~/.nvm/nvm.sh

source /usr/local/share/autojump/autojump.zsh
# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# Customize to your needs...
alias gcm="git checkout master"
alias gcd="git checkout develop"
alias gst="git status"

# cancel homebrew auto update
export HOMEBREW_NO_AUTO_UPDATE=true
case $TERM in
    xterm*)
      precmd () {print -Pn "\e]0;${PWD##*/}\a"}
        ;;
esac

# directory
alias f='ranger'
alias cc='~/company'
alias ff="~/front-end"
alias ffg="~/front-end/github-project"
alias ffr="~/front-end/REACT"
alias ffrx="~/front-end/RXJS"
alias ss="~/study"
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias -- -='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias -s php=vi
alias -s py=vi
alias -s rb=vi
alias -s html=vi
alias -s js=vi
alias -s ts=vi
alias -s jsx=vi
alias -s tsx=vi
alias -s vue=vi

# ip address
ip() curl ip.cn/$1


