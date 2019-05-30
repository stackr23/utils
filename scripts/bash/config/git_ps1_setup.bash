#       ____ ___ _____
#      / ___|_ _|_   _|
#     | |  _ | |  | |
#     | |_| || |  | |
#      \____|___| |_|
#
# git CLI command completion
if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
fi

# SETUP CLI INFO LINE

# show host only if SSH connection is open
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    if [ "$color_prompt" = yes ]; then
        ps1_host="@\[\033[0;32m\]\h\[\033[0m\]"
    else
        ps1_host="@\h"
    fi
else
    ps1_host=""
fi

# Shows the "dirty" indicator - meaning whether you modified tracked files.
# Can be * for unstaged changes, + for staged changes, # for "no HEAD to compare against" (usually only happens before initial commit)
GIT_PS1_SHOWDIRTYSTATE=1

# Shows the "stash" indicator - meaning whether you have files stashed.
# Looks like $
GIT_PS1_SHOWSTASHSTATE=1

# Shows the "untracked" indicator - meaning whether you have untracked files
# (files that are in the working directory but haven't been added using git add to the repository).
# Looks like %
GIT_PS1_SHOWUNTRACKEDFILES=1
# ???
GIT_PS1_SHOWUPSTREAM='auto'
#PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \[\033[0;36m\]${ps1_host} \w\[\033[0;32m\]$(__git_ps1)\n\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\] ▶\[\033[0m\] '
PS1='\[\033[0;32m\]\u\[\033[0;36m\]${ps1_host} - \w\[\033[0;32m\]$(__git_ps1)\n└─ ▶\[\033[0m\] '
#
# to be continued (show branch in status-color)
# use extra-file for prompt setup: https://stackoverflow.com/questions/3058325/what-is-the-difference-between-ps1-and-prompt-command
# https://digitalfortress.tech/tutorial/setting-up-git-prompt-step-by-step/
# user examples and __git_ps1 without git-prompt: https://gist.github.com/justintv/168835
# prompt colors: https://wiki.archlinux.org/index.php?title=Bash/Prompt_customization&direction=next&oldid=405781
