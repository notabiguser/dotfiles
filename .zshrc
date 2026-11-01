# ============================================================
#  ~/.zshrc
# ============================================================

# ---------- History ----------
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_VERIFY
setopt SHARE_HISTORY

# ---------- Oh My Zsh ----------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="eastwood"

plugins=(
  git
  sudo
  history-substring-search
  docker
  docker-compose
  kubectl
  kube-ps1
  terraform
  vault
)

source $ZSH/oh-my-zsh.sh

# ---------- Keybindings ----------
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# ---------- External plugins ----------
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ---------- Locale ----------
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# ---------- PATH ----------
export PATH="$HOME/.local/bin:$PATH"

# ---------- Docker ----------
export DOCKER_BUILDKIT=1

# ---------- Editor ----------
export EDITOR=nvim
export VISUAL=nvim
