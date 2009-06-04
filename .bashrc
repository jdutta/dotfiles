############ joy: personal settings ##############

PS1="\u@\h \w \$ "
#PS1="\h \t \w \$ "
#PS1=$PS1"\[\e]0;\h:\w\a\]"

alias a='alias'
alias ls='ls -pF'
alias l='ls'
alias ll='ls -l'
alias rm='rm -i'
alias c='clear'
alias src='source ~/.bashrc'
alias xvi='gvim'
alias f='find . -name'
alias xb='xvi ~/.bashrc'
alias g='gqview'
alias cnu='cvs -n up 2>/dev/null'
alias cdi='cvs di 2>/dev/null'
alias cvsdiff='cvs diff 2>/dev/null'
alias ecr='echo $CVSROOT'
alias pu='pushd'
alias po='popd'
alias ..='cd ..'
alias ...='cd ../..'
alias cmx='chmod -x *.jpg'
alias fphp='find . -name "*.php" | xargs grep -inr'

# for mac, vi arrow key fix for iTerm
export TERM=linux
export PATH=$PATH:~/bin:/opt/local/bin:/usr/local/git/bin

# no more needed maybe
export CVSROOT=/Users/joy/cvsroot
