# ============================================================
#  ~/.zshrc
# ============================================================

# ---------- History ----------
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

setopt HIST_IGNORE_DUPS       # не писать повторяющиеся подряд команды
setopt HIST_IGNORE_ALL_DUPS   # чистить старые дубликаты по всей истории
setopt HIST_IGNORE_SPACE      # не писать команды, начатые с пробела
setopt HIST_FIND_NO_DUPS      # не показывать дубликаты при поиске
setopt HIST_VERIFY            # подтверждать команду перед запуском из истории
setopt APPEND_HISTORY         # дописывать, а не перезаписывать файл истории
setopt INC_APPEND_HISTORY     # писать в файл сразу, не дожидаясь выхода
setopt SHARE_HISTORY          # общая история между открытыми сессиями
setopt EXTENDED_HISTORY       # хранить таймстампы команд

# ---------- Oh My Zsh ----------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="mgutz"

plugins=(
  git
  sudo
  extract
  history-substring-search
  # colored-man-pages
  # command-not-found
  # docker
  # docker-compose
  # kubectl
  # kube-ps1
  # kubectx
  # helm
  # python
  # pip
  # pyenv
  # virtualenv
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

# ---------- Aliases ----------
# safety
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# quality of life
alias v="nvim"
alias grep="grep --color=auto"
alias mkdir="mkdir -pv"
