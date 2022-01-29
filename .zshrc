# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="mortalscumbag"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export VIM_CONFIG=$HOME/.config/nvim/config

alias hoco='cd ~/cc/meusProjetos/HoCo'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="${GOPATH-"~/go"}/bin:$PATH"
