############ joy: personal settings ##############

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

PS1='\u@\h \w $(parse_git_branch)$ '
#PS1="\u@\h \w \$ "
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
alias fpy='find . -name "*.py" | xargs grep -inr'
#alias fjs='find . -name "*.js" | xargs grep -inr'
alias fjs='find . -not -path "*node_modules*" -not -path "*dist*" -name "*.js" | xargs grep -inr'
alias fhtml='find . -name "*.html" | xargs grep -inr'
alias fscss='find . -name "*.scss" | xargs grep -inr'
alias fvue='find . -name "*.vue" | xargs grep -inr'
alias fjv='find . -not -path "*node_modules*" -not -path "*dist*" -not -path "*images*" -name "*.js" -o -name "*.vue" | xargs grep -inr'
alias sls='screen -list'
alias ds='du -khs *'
alias st='/Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text'

# git
alias gs='git status'
alias gd='git diff'
alias gb='git branch'
alias gpr='git pull --rebase'
alias gl='git log --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'
alias glg='gl --graph'

if [ -f ~/.bashrc-aliases-elastica ]; then
  . ~/.bashrc-aliases-elastica
fi

#-----------------------------------------------------------------------------------------
# http://henrik.nyh.se/2008/12/git-dirty-prompt
# http://www.simplisticcomplexity.com/2008/03/13/show-your-git-branch-name-in-your-prompt/
#   username@Machine ~/dev/dir[master]$   # clean working directory
#   username@Machine ~/dev/dir[master*]$  # dirty working directory
 
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
  #git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1]/"
}
#-----------------------------------------------------------------------------------------

# ssh
alias jd='ssh therider@joydutta.com'
alias jdps='ssh joyduttaps@ps28369.dreamhost.com'

# aescrypt
alias ad='aescrypt -d -o - '
alias ae='aescrypt -e '

# for mac, vi arrow key fix for iTerm
export TERM=linux
export PATH=~/bin:/usr/local/bin:/usr/local/opt/ruby/bin:/Developer/usr/bin:$PATH

export NVM_DIR=~/.nvm
. /usr/local/opt/nvm/nvm.sh

# photo backups
rsyncd () { 
    rsync -avz $1 --exclude=\.* --exclude=\:* --delete-after ./ `pwd | sed "s/\/Users\/joy\/Pictures\/photography/\/Volumes\/Mac-Backup-1.5TB\/joy\/photography/"`;
}
