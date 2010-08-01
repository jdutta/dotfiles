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
alias cnu='cvs -n up 2>/dev/null'
alias cdi='cvs di 2>/dev/null'
alias cvsdiff='cvs diff 2>/dev/null'
alias pu='pushd'
alias po='popd'
alias ..='cd ..'
alias ...='cd ../..'
alias fphp='find . -name "*.php" | xargs grep -inr'
alias sls='screen -list'

# git
alias gs='git status'
alias gd='git diff'

# ssh
alias jd='ssh therider@joydutta.com'
alias shield='ssh joyd@shield.corp.yahoo.com'
alias jdps='ssh joyduttaps@ps28369.dreamhost.com'

# aescrypt
alias ad='aescrypt -d -o - '
alias ae='aescrypt -e '

# for mac, vi arrow key fix for iTerm
export TERM=linux
export PATH=$PATH:~/bin:/opt/local/bin:/usr/local/git/bin:/Developer/usr/bin

