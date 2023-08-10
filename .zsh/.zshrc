### ---- ZSH HOME -----------------------------------
export ZSH=$HOME/.zsh

### ---- Source other configs -----------------------------------
[[ -f $ZSH/config/history.zsh ]] && source $ZSH/config/history.zsh
[[ -f $ZSH/config/aliases.zsh ]] && source $ZSH/config/aliases.zsh

# Load Starship
eval "$(starship init zsh)"