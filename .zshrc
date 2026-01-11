export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8
export DOWNS="$HOME/Downloads/.downs"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 30

ZSH_THEME="bira"

fpath=(
  "$DOWNS/alacritty/extra/completions"
  $fpath
)

plugins=(
  git
  sudo
  command-not-found
  history-substring-search
  colored-man-pages
  z
  extract
  zsh-you-should-use
  zsh-bat
  zsh-autosuggestions
  zsh-syntax-highlighting
)

YSU_IGNORED_ALIASES=(
  extract
  x
)

BAT_STYLE=plain
BAT_PAGER=cat

HISTFILE="$HOME/.zsh_history"
HISTSIZE=1000
SAVEHIST=2000

setopt APPEND_HISTORY
setopt HIST_IGNORE_SPACE

export YSU_IGNORED_ALIASES
export BAT_STYLE
export BAT_PAGER

source "$ZSH/oh-my-zsh.sh"

# ----- me -----
export QTDIR="$HOME/Qt/6.7.0/gcc_64"
export CPLUS_INCLUDE_PATH="$QTDIR/include:${CPLUS_INCLUDE_PATH:-}"
export LD_LIBRARY_PATH="$QTDIR/lib:${LD_LIBRARY_PATH:-}"
export NVM_DIR="$HOME/.nvm"
export GEM_HOME="$HOME/gems"
export PNPM_HOME="$HOME/.local/share/pnpm"
export EDITOR="nvim"

typeset -U path PATH
path=(
  "$HOME/.local/bin"
  "$HOME/.cargo/bin"
  "$HOME/.nimble/bin"
  "$GEM_HOME/bin"
  "$PNPM_HOME"
  "$DOWNS/OpenJDK/jdk-21.0.2+13/bin"
  "$DOWNS/cmake-3.29.3-linux-x86_64/bin"
  "$QTDIR/bin"
  $path
)

# aliases
[[ -r "$HOME/.aliases" ]] && . "$HOME/.aliases"

# ghcup
[[ -r "$HOME/.ghcup/env" ]] && . "$HOME/.ghcup/env"

# pywal
[[ -r "$HOME/.cache/wal/sequences" ]] && (cat "$HOME/.cache/wal/sequences" & ) 2>/dev/null
[[ -r "$HOME/.cache/wal/colors-tty.sh" ]] && . "$HOME/.cache/wal/colors-tty.sh" 2>/dev/null

# nvm
[[ -r "$HOME/.nvm-for-zsh" ]] && . "$HOME/.nvm-for-zsh"
