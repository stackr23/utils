# Add Visual Studio Code (code)
# zzexport PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# source /usr/local/etc/bash_completion.d/git-completion.bash
# [[ -r "/usr/local/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/homebrew/etc/profile.d/bash_completion.s"
# source /usr/local/etc/bash_completion.d/git-flow-completion.bash

# if [[ $0 != *'zsh' ]]; then
# fi;

# PATH EXPORTS
export PATH="$PATH:/home/stefan/.local/bin"
# go
export GOROOT=/usr/local/lib/go
export PATH=$GOROOT/bin:$PATH

export CLICOLOR=1
#export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

##########################################
#######   aliases and functions   #########
###########################################

# if !colorls
# 	alias ll="lisahG"
# else
alias ll="ls -la"
alias ls="colorls -X --group-directories-first" # -X = sort by file extension

alias src='source ~/.zshrc && source ~/.bash_profile'
alias fs='du -hs * | gsort -h'
alias ip='ifconfig | grep "inet " | grep -v 127'
alias opn='xdg-open .'
alias docs='cd ~/Documents'
alias dow='cd ~/Downloads'
alias cdp='cd ..'
alias record='asciinema rec'

# git log --author="Stefan Friedl" --pretty=format:"%h%x09%an%x09%ad%x09%s"

function cds () {
	cd $1;
	ls;
}

function coam (){
	git coam $1
}
