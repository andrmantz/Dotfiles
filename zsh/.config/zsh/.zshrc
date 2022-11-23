autoload -U compinit colors
colors
compinit

setopt globdots
compinit -i

eval "$(zoxide init zsh --hook pwd)"

bindkey -v
[ -f "/home/andreas/.ghcup/env" ] && source "/home/andreas/.ghcup/env" # ghcup-env
for file in $ZDOTDIR/sources/*.zsh; source $file

export GOPATH=$HOME/.local/golib
export PATH=$PATH:$HOME/.local/bin:$GOPATH/bin
export GOPATH=$GOPATH:$HOME/Documents/go
export PATH=$PATH:/home/andreas/.foundry/bin
