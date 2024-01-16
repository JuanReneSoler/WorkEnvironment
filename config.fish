if status is-interactive
and not set -q TMUX
   exec tmux -2 new-session ranger ~
end
set -Ux EDITOR /usr/bin/nvim
set -gx PROJECT_PATHS ~/workspace
