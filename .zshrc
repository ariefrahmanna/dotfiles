export ZSH="$HOME/.oh-my-zsh"
# export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR="nvim"

ZSH_THEME="robbyrussell"
HIST_STAMPS="yyyy-mm-dd"

plugins=(
  git
  nvm
  node
  npm
  docker
  tmux
)

# Aliases
alias clip="xclip -selection clipboard"
alias tmuxnew="tmux new-session -s"
alias tmuxattach="tmux attach-session"
alias tmuxls="tmux ls"
alias tmuxkill="tmux kill-session -t"
alias tmuxkillpane="tmux kill-pane"
alias tmuxreload="tmux source-file ~/.config/tmux/tmux.conf"
alias tmuxstart="tmux attach-session || tmux new-session -s default"

# start tmux session with the name 'default'
tinit() {
  if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach-session -t default 2>/dev/null || tmux new-session -s default
  fi
}

source $ZSH/oh-my-zsh.sh
