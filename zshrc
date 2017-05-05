export TERM="xterm-256color"
export ZSH=/ascldap/users/dgvigi/.oh-my-zsh
POWERLEVEL9K_MODE='awesome-fontconfig'
ZSH_THEME="powerlevel9k/powerlevel9k"
plugins=(git vagrant vim rails)
source $ZSH/oh-my-zsh.sh

export no_proxy="$no_proxy,localhost,.sandia.gov,ceecloud.sandia.gov,10.202.0.0/16,10.230.0.0/16,cee-hipchat.sandia.gov"
alias go="ssh -X ceesrv02.sandia.gov"
alias ll="ls -lah"
alias egrep="egrep --color='always'"
alias n='nmap -sT -P0 -vv -p 1-65353 -T5'
alias grep="egrep --color='always'"
alias railsrnprod="ssh eshpc_helper@rails-rn-prod.sandia.gov"
alias railsprod="ssh eshpc_helper@rails-prod.sandia.gov"
alias railsrndev="ssh eshpc_helper@rails-rn-dev.sandia.gov"
alias railsdev="ssh eshpc_helper@rails-dev.sandia.gov"
alias railsrnqual="ssh eshpc_helper@rails-rn-qual.sandia.gov"
alias railsqual="ssh eshpc_helper@rails-qual.sandia.gov"
alias toolbox="echo 'cd ~/Projects/CEE-Dev/cee_toolbox/ ' && cd ~/Projects/CEE-Dev/cee_toolbox/ "
alias nile="echo 'cd ~/Projects/CEE-Dev/nile/ ' && cd ~/Projects/CEE-Dev/nile/ "
alias ceedo="echo 'cd ~/Projects/CEE-Dev/cee_do/ ' && cd ~/Projects/CEE-Dev/cee_do/ "
alias ceecond="echo 'cd ~/Projects/CEE/cee-conductor/ ' && cd ~/Projects/CEE/cee-conductor/ "

export EDITOR='vim'
source ~/.bin/tmuxinator.zsh


# Powerline prompt requierment
source /home/dgvigi/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

#bundle requirement
export LD_LIBRARY_PATH=/opt/oracle/instantclient_12_1
export ORACLE_HOME=/usr/lib/oracle/12.2/client64/

# python virtualenv
export WORKON_HOME=~/.virtualenvs
export PROJECT_HOME=$HOME/Projects
source /usr/local/bin/virtualenvwrapper.sh

# These lines must stay last
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$HOME/.rvm/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
# Load RVM into a shell session *as a function*
