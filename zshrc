export PATH=$HOME/anaconda3/bin:$HOME/bin:$PATH:/usr/local/sbin
export ZSH=~/.oh-my-zsh

POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status anaconda rvm history time )
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context root_indicator dir dir_writable vcs)
ZSH_THEME="powerlevel9k/powerlevel9k"

HIST_STAMPS="yyyy-mm-dd"
plugins=(
  git
  zsh-autosuggestions
  git-flow-completion
  colorize
  vi-mode
  docker
  docker-compose
  rvm
  brew
  osx
  battery
)

source $ZSH/oh-my-zsh.sh
export HOMEBREW_GITHUB_API_TOKEN="REDACTED"

alias disableprox="for i in $(env | grep _proxy | cut -d'=' -f1); do unset $i ;done"
alias ll="ls -lah"
alias cindiesbox="ssh 10.166.60.9 -l dave"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.iterm2_shell_integration.zsh
eval $(thefuck --alias)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"
