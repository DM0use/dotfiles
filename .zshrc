alias vim=nvim
source ~/zsh-autocomplete/zsh-autocomplete.plugin.zsh
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
