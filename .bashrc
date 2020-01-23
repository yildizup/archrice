# ~/.bashrc

HISTSIZE=1000

source /home/meyya/scripts/fzffunctions

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias ls='ls --color=auto'


# load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# vim key bindings
set -o vi

# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
export KEYTIMEOUT=1

###################### Design  ##################################

# change design of bash prompt
lightblue='\[\033[1;34m\]'
backtodefault='\[\033[0m\]'
darkblue='\[\033[0;34m\]'
red='\[\033[0;31m\]'
export PS1="${lightblue}\W ${backtodefault}${darkblue}(${backtodefault}${red}\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)${darkblue})${backtodefault} \$ "



###################### Aliases  ##################################

alias l="ls -l"
alias rm="rm -i"
alias smount="sudo mount"
alias sumount="sudo umount"
alias udiskoff="udisksctl power-off -b"


