
# Given characters awared history search
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

alias bpr="source ~/.bash_profile"
alias bp="mate ~/.bash_profile"

# for routine dir
alias cdc="cd ~/code"
alias cdcr="cd ~/code/ror"
alias cdcg="cd ~/code/github.com"
alias cdcgx="cd ~/code/github.com/xiaolai.github.com"
alias cdcgxm="cd ~/code/github.com/xiaolai.github.com&&mate ~/code/github.com/xiaolai.github.com"
alias cdcgxs="cd ~/code/github.com/xiaolai.github.com&&s ~/code/github.com/xiaolai.github.com/xiaolai@github.com.sublime-project"

# for xiaolai.github.com and octopress
alias ogd="rake generate && rake deploy && open http://xiaolai.github.com"

# for routine websites:
alias openrc="open http://ruby-china.org"
alias openrg="oepn http://rubygems.org"
alias openrtb="open https://www.ruby-toolbox.com"
alias openxiaolai="open http://xiaolai.github.com"
alias opengxiaolai="open http://github.com/xiaolai"

# for pow and powder
alias po="powder open"
alias plk="powder link"
alias plt="powder list"
alias pclean="powder cleanup"
alias pinit="gem install powder&&powder install&&powder link&&powder cleanup&&powder list&&powder open"

#for git
alias ginit='git init&&git add .&&git commit -m "Initial Commit"'
alias glt='git log --oneline --decorate --all --graph --simplify-by-decoration'
alias gla='git log --oneline --decorate --all'
alias g="git status"
alias gc='git checkout'
alias gcb='git checkout -b'
alias gcm='git checkout master'
alias gbr='git branch'
alias gcam='git commit -am'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# RVM Customized Shell Prompt
[[ -s "$HOME/.rvm/contrib/ps1_functions" ]] && source "$HOME/.rvm/contrib/ps1_functions"
ps1_set --prompt ∴
# RVM Bash Completion
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

#for git bash_completion
source /usr/local/etc/bash_completion.d/git-completion.bash

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# for git using TextMate as Editor
export EDITOR="/usr/local/bin/mate -w"