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
plugins=(git debian k zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ls="k -a"
