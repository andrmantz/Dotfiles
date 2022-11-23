HISTFILE=$ZDOTDIR/histfile
HISTSIZE=2000
SAVEHIST=2000

# Add commands to history as they are entered, don't wait for shell to exit
setopt INC_APPEND_HISTORY
# Do not keep duplicate commands in history
setopt HIST_IGNORE_ALL_DUPS
# Do not remember commands that start with a whitespace
setopt HIST_IGNORE_SPACE
