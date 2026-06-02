# --- ZSH History Configuration ---
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt sharehistory

# --- Initialize Antidote Plugin Manager ---
source /usr/share/zsh-antidote/antidote.zsh
antidote load


# --- Quality of Life Features ---
setopt autocd        # Just type a directory name to 'cd' into it
setopt extendedglob  # Advanced file matching

# --- Basic Aliases ---
alias ls='ls --color=auto'
alias ll='ls -lah'
alias pacinst='sudo pacman -S'

fastfetch 
# --- Initialize Starship Prompt ---
eval "$(starship init zsh)"

# -- Custom Alias --
alias cls='clear'
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

export PATH="$HOME/.local/bin:$PATH"

