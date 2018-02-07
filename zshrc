export PATH="~/.local/bin:$PATH"
export TERM="xterm-256color"
export ZSH=$HOME/.oh-my-zsh
zsh_new_mail_joined () {
  echo "  `find ~/Mail/INBOX/new -type f | wc -l`"
}
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv rvm history time )
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator dir dir_writable zsh_new_mail_joined vcs)
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
alias ccat="pygmentize -g"
alias kk="kinit -f -r 90d -l 90d -p dgvigi && klist"

export EDITOR='vim'
source ~/.bin/tmuxinator.zsh
# Powerline prompt requierment
source /home/dgvigi/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

#ruby oracle bundle requirement
export LD_LIBRARY_PATH=/opt/oracle/instantclient_12_2
export ORACLE_HOME=/usr/lib/oracle/12.2/client64/

export http_proxy="http://wwwproxy.sandia.gov:80/"
export https_proxy="http://wwwproxy.sandia.gov:80/"
export ftp_proxy="http://wwwproxy.sandia.gov:80/"
export socks_proxy="http://wwwproxy.sandia.gov:80/"
export rsync_proxy="http://wwwproxy.sandia.gov:80/"
export FTP_PROXY=$ftp_proxy
export HTTPS_PROXY=$https_proxy
export NO_PROXY=$no_proxy
export HTTP_PROXY=$http_proxy
export RSYNC_PROXY=$rsync_proxy
export SOCKS_PROXY=$socks_proxy
export RVM_PROXY=$http_proxy:$rvm_proxy


# These lines must stay last
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$HOME/.rvm/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# Load RVM into a shell session *as a function*
