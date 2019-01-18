# lookfor unbind command:
# bind -l | head -5 
# bind alias-expand-line to control+e
# bind "\C-e:alias-expand-line"
# confirm bind?
# bind -q alias-expand-line



# export GOPATH=$HOME/go-workspace # don't forget to change your path correctly!
# export GOROOT=/usr/local/opt/go/libexec
# export PATH=$PATH:$GOPATH/bin
# export PATH=$PATH:$GOROOT/bin
# export GOBIN=$GOPATH/bin
# export PATH=$PATH:/Library/TeX/texbin
# export PATH=/usr/local/bin:$PATH

function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# __conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     \eval "$__conda_setup"
# else
#     if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/anaconda3/etc/profile.d/conda.sh"
#         CONDA_CHANGEPS1=false conda activate base
#     else
#         \export PATH="/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup

export PATH="/anaconda3/bin:$PATH"


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# RVM Bash Completion
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion


for file in /usr/local/etc/bash_completion.d ; do
  if [ -f "$file" ] ; then
    . "$file"
  fi
done

# Given characters awared history search
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

alias bpr="source ~/.bash_profile"
alias bp="code ~/.bash_profile"

# for ls
alias lsf="ls -aFhlG"
alias lsa="ls -a"
alias lsl="ls -l"

# for routine dir
alias ~~="cd ~"
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
alias cdcloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/"
alias cdhexo="cd ~/Dropbox/xiaolai.github.io"
alias cdinb="~/Library/Mobile Documents/com~apple~CloudDocs/inblockchain-hexo"
alias hd="hexo clean && hexo generate && hexo deploy"
alias hs="hexo clean && hexo generate && hexo server"

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

#   extract:  Extract most know archives with one command
#   https://natelandau.com/my-mac-osx-bash_profile/
#   ---------------------------------------------------------
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

#   cdf:  'Cd's to frontmost window of MacOS Finder
#   ------------------------------------------------------
cdf () {
    currFolderPath=$( /usr/bin/osascript <<EOT
        tell application "Finder"
            try
        set currFolder to (folder of the front window as alias)
            on error
        set currFolder to (path to desktop folder as alias)
            end try
            POSIX path of currFolder
        end tell
EOT
    )
    echo "cd to \"$currFolderPath\""
    cd "$currFolderPath"
}

#   ---------------------------
#   4. SEARCHING
#   ---------------------------

alias qfind="find . -name "                 # qfind:    Quickly search for file
ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string

#   spotlight: Search for a file using MacOS Spotlight's metadata
#   -----------------------------------------------------------
spotlight () { mdfind "kMDItemDisplayName == '$@'wc"; }

# ii:  display useful host related informaton
#   -------------------------------------------------------------------
ii() {
    echo -e "\nYou are logged on ${RED}$HOST"
    echo -e "\nAdditionnal information:$NC " ; uname -a
    echo -e "\n${RED}Users logged on:$NC " ; w -h
    echo -e "\n${RED}Current date :$NC " ; date
    echo -e "\n${RED}Machine stats :$NC " ; uptime
    echo -e "\n${RED}Current network location :$NC " ; scselect
    echo -e "\n${RED}Public facing IP Address :$NC " ;myip
    #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
    echo
}
