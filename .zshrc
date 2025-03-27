setopt nonomatch

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

export PATH="$PATH:$HOME/.local/bin"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	thefuck
)

source $ZSH/oh-my-zsh.sh

alias tweakzsh="vim $HOME/.zshrc"
alias reload="source $HOME/.zshrc && echo '>>> OH MY ZSH configurations are reloaded!'"
alias auu="sudo apt update && sudo apt upgrade -y"

# >>> autojump initialize >>>
[[ -s /home/jalen/.autojump/etc/profile.d/autojump.sh ]] && source /home/jalen/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u
# <<< autojump initialize <<<

eval "$(starship init zsh)"

alias help="tldr"
