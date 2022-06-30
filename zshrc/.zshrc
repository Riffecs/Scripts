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



# My Config
alias cls="clear"
alias resolvconf="sudo bash -c 'echo "nameserver 8.8.8.8" > /etc/resolv.conf'"
alias zshrc="nano ~/.zshrc"
alias black="black *.py"

# Windows Config
set -e
if grep -qEi "(Microsoft|WSL)" /proc/version &> /dev/null ; then
    if [ ! -d "/mnt/c" ]
        then 
            alias winc="cd /mnt/c/"
            alias winuser="cd /mnt/c/Users/Riffecs"
            alias windesktop="cd /mnt/c/Users/Riffecs/Desktop"
    fi
    if [ ! -d "/mnt/d" ]
        then 
            alias nextcloud="cd /mnt/d/nextcloud"
    fi
fi
