# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
fpath+=$HOME/.zsh/pure

# Path to your oh-my-zsh installation.
export ZSH="/home/rrc/.oh-my-zsh"

autoload -U promptinit; promptinit
prompt pure
plugins=(git debian k zsh-syntax-highlighting nvm zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

bindkey -v

export VIM='~/.vim'
export VIMRC=$VIM/vimrc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias ls="k -a"
alias python="python3"
alias pip="pip3"
alias open="xdg-open"
alias tmux="tmux -2"
alias chrome="google-chrome"
