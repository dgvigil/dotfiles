export PATH=$HOME/anaconda3/bin:$HOME/bin:$PATH:/usr/local/sbin
export ZSH=~/.oh-my-zsh

POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status anaconda rvm history time )
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context root_indicator dir dir_writable vcs)
ZSH_THEME="powerlevel9k/powerlevel9k"

source $ZSH/oh-my-zsh.sh
HIST_STAMPS="yyyy-mm-dd"
plugins=(
  git
  zsh-autosuggestions
  git-flow-completion
  colorize
  docker
  docker-compose
  rvm
  battery
)


alias ll="ls -lah"

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval $(thefuck --alias)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
