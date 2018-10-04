export PATH=$HOME/anaconda3/bin:/opt/chefdk/bin:$HOME/bin:$PATH:/usr/local/sbin
export ZSH=~/.oh-my-zsh

POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status anaconda rvm history time )
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context root_indicator dir dir_writable vcs)
ZSH_THEME="powerlevel9k/powerlevel9k"
plugins=(git zsh-autosuggestions colorize ruby rvm vagrant berkshelf)
HIST_STAMPS="yyyy-mm-dd"
source $ZSH/oh-my-zsh.sh
export GOPATH="/home/dave3226/go"
export KUBECONFIG=$KUBECONFIG:$HOME/.kube/config

alias ll="ls -lAhF"
alias egrep"egrep --color --exclude-dir={.bzr,CVS,.git,.hg,.svn}"
alias n='nmap -sT -P0 -vv -p 1-65353 -T5'

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
eval $(thefuck --alias)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
eval "$(chef shell-init zsh)"
