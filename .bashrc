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
alias pu='pushd'
alias po='popd'
alias ..='cd ..'
alias ...='cd ../..'
alias fphp='find . -name "*.php" | xargs grep -inr'
alias fjs='find . -name "*.js" | xargs grep -inr'
alias fhtml='find . -name "*.html" | xargs grep -inr'
alias sls='screen -list'
alias ds='du -khs *'

# git
alias gs='git status'
alias gd='git diff'
alias gpr='git pull --rebase'
alias gpo='git push origin HEAD:refs/for/master'
alias glg='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'

# ssh
alias jd='ssh therider@joydutta.com'
alias jdps='ssh joyduttaps@ps28369.dreamhost.com'

# aescrypt
alias ad='aescrypt -d -o - '
alias ae='aescrypt -e '

# for mac, vi arrow key fix for iTerm
export TERM=linux
export PATH=$PATH:~/bin:/opt/local/bin:/usr/local/git/bin:/Developer/usr/bin

rsyncd () { 
    rsync -avz $1 --exclude=\.* --exclude=\:* --delete-after ./ `pwd | sed "s/\/Users\/joy\/Pictures\/photography/\/Volumes\/Mac-Backup-1.5TB\/joy\/photography/"`;
}
