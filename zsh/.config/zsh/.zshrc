autoload -U compinit colors
colors
compinit

setopt globdots
compinit -i

eval "$(zoxide init zsh --hook pwd)"

bindkey -v
for file in $ZDOTDIR/sources/*.zsh; source $file

export PYTHONDONTWRITEBYTECODE=1
export PATH=$PATH:$HOME/.local/bin
