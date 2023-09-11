# Common cd's
alias home='cd ~'
alias back='cd -'
alias root='cd /'
alias ..='cd ..'
alias ...='cd ../..'
alias docs="cd $HOME/Documents"
alias dls="cd $HOME/Downloads"

# Typos
alias dc='cd'
alias exot='exit'
alias celar='clear'
alias claer='clear'
alias clera='clear'

# grep color
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Normal aliases
alias rmf='rm -rf'
alias h='history'
alias open='xdg-open'
alias autoremove='sudo pacman -Rcs $(pacman -Qdtq)'
alias free='free -m'
alias serv='systemctl list-units -t service --no-pager --no-legend | grep active | grep -v systemd'
alias vim='nvim'
alias .='source'
alias pac='sudo pacman'
alias updkeyrings='sudo pacman -S archlinux-keyring && sudo pacman -Syu'

# Overwrites
# exa
alias ls='exa --color=always --group-directories-first --icons' # my preferred listing
alias lla='exa -la --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons' # long format
alias la='exa -a --color=always --group-directories-first --icons'

alias cp='cp -r'
alias scp='scp -r'
alias mkdir='mkdir -p'


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# copy 
alias copy='xclip -selection clipboard'

# Pass
alias p='pass -c'

# Kittens
alias d='kitty +kitten diff'
alias icat='kitty +kitten icat'
alias ssh='kitty +kitten ssh'

# docker
alias doc='docker container'
alias doi='docker image'
alias dov='docker volume'
alias don='docker network'
alias dos='docker system'
alias dob='docker build'
alias doe='docker exec'

# Same for podman
alias poc='podman container'
alias poi='podman image'
alias poe='podman exec'


# git
alias gs='git status'
alias gps='git push'
alias gpl='git pull'
alias gc='git commit -m'
alias ga='git add'
alias gr='git remote'

alias sz='source $ZDOTDIR/.zshrc'
