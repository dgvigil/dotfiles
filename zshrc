export GOPATH=$HOME/go
export PATH=/opt/conda/bin:$GOPATH/bin:$HOME/bin:$PATH:/usr/local/sbin:~/Projects/istio-1.0.5/bin:/usr/local/go/bin
export ZSH=~/.oh-my-zsh
export KUBECONFIG=$HOME/.kube/config

# POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time )
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir dir_writable vcs)
ZSH_THEME="powerlevel9k/powerlevel9k"
plugins=(git zsh-autosuggestions colorize kubectl conda)
HIST_STAMPS="yyyy-mm-dd"
source $ZSH/oh-my-zsh.sh

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
eval $(thefuck --alias)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/.fonts/*.sh

alias ll="ls -lAhF"
alias mv="mv -v"
alias cp="cp -v"
alias egrep"egrep --color --exclude-dir={.bzr,CVS,.git,.hg,.svn}"
alias grep"egrep --color --exclude-dir={.bzr,CVS,.git,.hg,.svn}"
alias n='nmap -sT -P0 -vv -p 1-65353 -T5'
alias gs='git status'
alias vim='/usr/local/bin/nvim'

# added by Anaconda3 5.3.1 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/opt/conda/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/opt/conda/etc/profile.d/conda.sh" ]; then
        . "/opt/conda/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/opt/conda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

# configure hal auto-complete
. /etc/bash_completion.d/hal

ssh-add >/dev/null 2>&1
