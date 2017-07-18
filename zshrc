export TERM="xterm-256color"
export ZSH=/ascldap/users/dgvigi/.oh-my-zsh
POWERLEVEL9K_MODE='awesome-fontconfig'
ZSH_THEME="powerlevel9k/powerlevel9k"
plugins=(git vagrant vim rails)
source $ZSH/oh-my-zsh.sh

alias ll="ls -lah"
alias egrep="egrep --color='always'"
alias grep="egrep --color='always'"
alias n='nmap -sT -P0 -vv -p 1-65353 -T5'
alias grep="egrep --color='always'"
alias ccat="pygmentize -g"

export EDITOR='vim'
source ~/.bin/tmuxinator.zsh
# Powerline prompt requierment
source /home/dgvigi/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

#ruby oracle bundle requirement
export LD_LIBRARY_PATH=/opt/oracle/instantclient_12_1
export ORACLE_HOME=/usr/lib/oracle/12.2/client64/

# These lines must stay last
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$HOME/.rvm/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
# Load RVM into a shell session *as a function*
