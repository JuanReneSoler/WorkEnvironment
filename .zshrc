export EDITOR=/usr/bin/nvim
export PATH=$PATH:~/.dotnet/tools
export ZSH="$HOME/.oh-my-zsh" 
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}"  ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh"  ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export PATH=$PATH:$HOME/.nvm/versions/node/$(nvm version)/bin

# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"

ZSH_THEME="agnoster" 
PROJECT_PATHS=(~/Workspace) 

plugins=(git z pj) 

source $ZSH/oh-my-zsh.sh 
source ~/.zshenv

# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
#
#if [ "$TMUX" = "" ]; then tmux -2 new-session ranger ~; fi #execute tmux and ranger
if [ "$TMUX" = "" ]; then tmux -2 new-session; fi #execute tmux and ranger
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
