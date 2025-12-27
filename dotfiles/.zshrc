# ==================================================
# ZSH + OH MY ZSH + POWERLEVEL10K — CLEAN + PLUGINS
# User: samuel
# ==================================================

# ---------- Powerlevel10k instant prompt ----------
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ---------- Oh My Zsh ----------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_AUTOSUGGEST_USE_ASYNC=true


# Plugins do Oh My Zsh (mínimo)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# ---------- Completion (após OMZ) ----------
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# ==================================================
# CLEAN USER CONFIG
# ==================================================

# ---------- Behavior & Performance ----------
setopt AUTO_CD
setopt INTERACTIVE_COMMENTS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# ---------- Environment ----------
export EDITOR=code
export VISUAL=code
export TERMINAL=kitty

# ---------- Aliases ----------
alias ll='ls -la'
alias cls='clear'
alias ..='cd ..'
alias ...='cd ../..'

# Arch Linux
alias up='sudo pacman -Syu'
alias in='sudo pacman -S'
alias rmv='sudo pacman -Rns'

# Git
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'

# VS Code
alias c='code .'

# ==================================================
# EXTRA PLUGINS (LEVE E LIMPO)
# ==================================================

# Autosuggestions (comandos sugeridos em cinza)
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Syntax Highlighting (SEMPRE por último)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ---------- Powerlevel10k config ----------
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ==================================================
# END
# ==================================================
