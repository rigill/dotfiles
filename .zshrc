# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
fpath+=$HOME/.zsh/pure

# Path to your oh-my-zsh installation.
export ZSH="/home/rrc/.oh-my-zsh"

# Plugins
# source $HOME/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -U promptinit; promptinit
prompt pure
plugins=(git debian k zsh-syntax-highlighting nvm)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ls="k -a"
