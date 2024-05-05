if [ "$TMUX" = "" ]; then tmux -2 new-session ranger ~; fi #execute tmux and ranger

export EDITOR=/usr/bin/nvim
export PATH=$PATH:~/.dotnet/tools 
export ZSH="$HOME/.oh-my-zsh" 

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
