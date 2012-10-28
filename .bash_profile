PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
# lookfor unbind command:
# bind -l | head -5 
# bind alias-expand-line to control+e
# bind "\C-e:alias-expand-line"
# confirm bind?
# bind -q alias-expand-line


# Given characters awared history search
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

alias bpr="source ~/.bash_profile"
alias bp="mate ~/.bash_profile"

# for ssh tunneling

alias ston="sudo networksetup -setsocksfirewallproxystate Wi-Fi on&&ssh -Nf root@eduisevpn -D 127.0.0.1:1080"
alias stoff="sudo networksetup -setsocksfirewallproxystate Wi-Fi off&&sudo killall ssh"

# for ls
alias lsf="ls -aFhlG"
alias lsa="ls -a"
alias lsl="ls -l"

# for routine dir
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias cdb="cd -"
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
alias gla='git log --oneline --decorate --all'
alias glt='git log --oneline --decorate --all --graph'
alias glts='git log --oneline --decorate --all --graph --simplsify-by-decoration'
alias g="git status"
alias gaa="git add ."
alias gc='git checkout'
alias gca='git checkout .'
alias gcb='git checkout -b'
alias gcm='git checkout master'
alias gbr='git branch'
alias gcam='git commit -am'
alias gp='git push'
alias gpuom='git push -u origin master'
alias gph='git push heroku'
alias gphm='git push heroku master'
alias gcdf='git clean -d -f'

#for jekyll site
alias jbm="cd ~/code/github.com/b4rails.github.com && mate . &&open http://0.0.0.0:4000 && jekyll --server"
alias jbp="cd ~/code/github.com/b4rails.github.com && rake push && open http://b4rails.com"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# RVM Customized Shell Prompt
[[ -s "$HOME/.rvm/contrib/ps1_functions" ]] && source "$HOME/.rvm/contrib/ps1_functions"
ps1_set --prompt ⌘

# RVM Bash Completion
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

#for git bash_completion
# source /usr/local/etc/bash_completion.d/git-completion.bash

for file in /usr/local/etc/bash_completion.d ; do
  if [ -f "$file" ] ; then
    . "$file"
  fi
done

# for git using TextMate as Editor
export EDITOR="/usr/local/bin/mate -w"

# find in $directory where $name and open with TextMate
fmate(){
  find $1 -type d -name $2 -exec mate {} \;
}


# do ". acd_func.sh"
# acd_func 1.0.5, 10-nov-2004
# petar marinov, http:/geocities.com/h2428, this is public domain

# cd_func ()
# {
#   local x2 the_new_dir adir index
#   local -i cnt
# 
#   if [[ $1 ==  "--" ]]; then
#     dirs -v
#     return 0
#   fi
# 
#   the_new_dir=$1
#   [[ -z $1 ]] && the_new_dir=$HOME
# 
#   if [[ ${the_new_dir:0:1} == '-' ]]; then
#     #
#     # Extract dir N from dirs
#     index=${the_new_dir:1}
#     [[ -z $index ]] && index=1
#     adir=$(dirs +$index)
#     [[ -z $adir ]] && return 1
#     the_new_dir=$adir
#   fi
# 
#   #
#   # '~' has to be substituted by ${HOME}
#   [[ ${the_new_dir:0:1} == '~' ]] && the_new_dir="${HOME}${the_new_dir:1}"
# 
#   #
#   # Now change to the new dir and add to the top of the stack
#   pushd "${the_new_dir}" > /dev/null
#   [[ $? -ne 0 ]] && return 1
#   the_new_dir=$(pwd)
# 
#   #
#   # Trim down everything beyond 11th entry
#   popd -n +11 2>/dev/null 1>/dev/null
# 
#   #
#   # Remove any other occurence of this dir, skipping the top of the stack
#   for ((cnt=1; cnt <= 10; cnt++)); do
#     x2=$(dirs +${cnt} 2>/dev/null)
#     [[ $? -ne 0 ]] && return 0
#     [[ ${x2:0:1} == '~' ]] && x2="${HOME}${x2:1}"
#     if [[ "${x2}" == "${the_new_dir}" ]]; then
#       popd -n +$cnt 2>/dev/null 1>/dev/null
#       cnt=cnt-1
#     fi
#   done
# 
#   return 0
# }
# 
# alias cdha="cd_func --"
# alias cdh="cd_func"
# 
# if [[ $BASH_VERSION > "2.05a" ]]; then
#   # ctrl+w shows the menu
#   bind -x "\"\C-w\":cd_func -- ;"
# fi
