export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="af-magic"
plugins=(git)
source $ZSH/oh-my-zsh.sh
export MANPATH="/usr/local/man:$MANPATH"

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Git Config
git config --global user.name "Riffecs"
git config --global user.email "riffecs@gmail.com"


# My Config
alias cls="clear"
alias resolvconf="sudo bash -c 'echo "nameserver 8.8.8.8" > /etc/resolv.conf'"
alias zshrc="nano ~/.zshrc"

