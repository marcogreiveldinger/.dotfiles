#### ---- fast-syntax-highlighting ------------------------
[ -f $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh ] && source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

#### ---- zsh-autosuggestions ------------------------
[ -f $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# This speeds up pasting w/ autosuggest
# https://github.com/zsh-users/zsh-autosuggestions/issues/238
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish

#autosuggestion highlighting
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=60'

#### ---- zsh-z ------------------------
[ -f $ZSH/plugins/zsh-z/zsh-z.plugin.zsh ] && source $ZSH/plugins/zsh-z/zsh-z.plugin.zsh
autoload -U compinit; compinit # source after zsh-z again for autocompletion to work

#### ---- zsh-abbr ------------------------
#[ -f $ZSH/plugins/zsh-abbr/zsh-abbr.zsh ] && source $ZSH/plugins/zsh-abbr/zsh-abbr.zsh
[ -f /opt/homebrew/share/zsh-abbr/zsh-abbr.zsh ] && source /opt/homebrew/share/zsh-abbr/zsh-abbr.zsh
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-abbr:$FPATH

  autoload -Uz compinit
  compinit
fi
chmod go-w '/opt/homebrew/share'
chmod -R go-w '/opt/homebrew/share/zsh'
rm -f ~/.zcompdump; compinit

### ---- Load fzf completions and keybindings -----------------------------------
[ -f $ZSH/plugins/fzf/.fzf.zsh ] && source $ZSH/plugins/fzf/.fzf.zsh

### ---- Load goto script with autocompletion -----------------------------------
[ -f $ZSH/plugins/goto/goto.sh ] && source $ZSH/plugins/goto/goto.sh

### ---- Load git open script -----------------------------------
[ -f $ZSH/plugins/git-open/git-open.plugin.zsh ] && source $ZSH/plugins/git-open/git-open.plugin.zsh

### ---- Load zsh-nvm  -----------------------------------
[ -f $ZSH/plugins/zsh-nvm/zsh-nvm.plugin.zsh ] && source $ZSH/plugins/zsh-nvm/zsh-nvm.plugin.zsh
