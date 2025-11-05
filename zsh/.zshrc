export PATH="$HOME/.local/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

unalias l
l() {
  clear
  eza --long --header --icons --git --all "$@"
}
c() {
  z "$@"
  l
}
alias u='paru'
alias v='zeditor'
alias q='exit'
alias lzg='lazygit'
alias lzd='lazydocker'
cheat() {
  curl cheat.sh/"$1"
}

eval "$(zoxide init zsh)"

eval "$(starship init zsh)"
