### ---- ZSH HOME -----------------------------------
export ZSH=$HOME/.zsh

### ---- Source other configs -----------------------------------
[[ -f $ZSH/config/history.zsh ]] && source $ZSH/config/history.zsh
[[ -f $ZSH/config/aliases.zsh ]] && source $ZSH/config/aliases.zsh

### ---- Source plugins -----------------------------------
[[ -f $ZSH/plugins/plugins.zsh ]] && source $ZSH/plugins/plugins.zsh

### ---- autocompletions -----------------------------------
autoload -Uz compinit && compinit
autoload -U +X bashcompinit && bashcompinit

### ---- Completion options and styling -----------------------------------
zstyle ':completion:*' menu select # selectable menu
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]-_}={[:upper:][:lower:]_-}' 'r:|=*' 'l:|=* r:|=*'  # case insensitive completion
zstyle ':completion:*' special-dirs true # Complete . and .. special directories
zstyle ':completion:*' list-colors '' # colorize completion lists
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01' # colorize kill list

### ---- Load fzf completions and keybindings -----------------------------------
[ -f $ZSH/plugins/fzf/.fzf.zsh ] && source $ZSH/plugins/fzf/.fzf.zsh

### ---- Load Starship -----------------------------------
eval "$(starship init zsh)"