export PATH="~/.local/bin:$PATH"
export TERM="xterm-256color"
export ZSH=$HOME/.oh-my-zsh
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv rvm history time )
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context root_indicator dir dir_writable vcs)
ZSH_THEME="powerlevel9k/powerlevel9k"
plugins=(git vagrant vim rails virtualenv django)
source $ZSH/oh-my-zsh.sh

export no_proxy="localhost,sandia.gov,ceecloud.sandia.gov,10.202.0.0/16,10.230.0.0/16,*.sandia.gov,cee-hipchat.sandia.gov"
alias go="ssh -X ceesrv02.sandia.gov"
alias ll="ls -lah"
alias egrep="egrep --color='always'"
alias grep="egrep --color='always'"
alias n='nmap -sT -P0 -vv -p 1-65353 -T5'
alias grep="egrep --color='always'"
alias ccat="pygmentize -g"
alias kk="kinit -f -r 90d -l 90d -p dgvigi && klist"

export EDITOR='vim'
source ~/.bin/tmuxinator.zsh
# Powerline prompt requierment
source /home/dgvigi/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

#ruby oracle bundle requirement
export LD_LIBRARY_PATH=/opt/oracle/instantclient_12_2
export ORACLE_HOME=/usr/lib/oracle/12.2/client64/

# These lines must stay last
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$HOME/.rvm/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# Load RVM into a shell session *as a function*
