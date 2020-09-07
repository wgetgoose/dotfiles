if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="/home/goose/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git python debian zsh-autosuggestions zsh-syntax-highlighting)
ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
bindkey '^ ' autosuggest-accept
cd ~
