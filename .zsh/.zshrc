### ---- ZSH HOME -----------------------------------
export ZSH=$HOME/.zsh

### ---- Source other configs -----------------------------------
[[ -f $ZSH/config/history.zsh ]] && source $ZSH/config/history.zsh
[[ -f $ZSH/config/aliases.zsh ]] && source $ZSH/config/aliases.zsh

### ---- Source plugins -----------------------------------
[[ -f $ZSH/plugins/plugins.zsh ]] && source $ZSH/plugins/plugins.zsh

### ---- autocompletion with selectable menu -----------------------------------
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# Load Starship
eval "$(starship init zsh)"