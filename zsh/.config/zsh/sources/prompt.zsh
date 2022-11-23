# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# PS1
zstyle ':vcs_info:git:*' formats '%F{215} %b%f'
setopt PROMPT_SUBST
PROMPT="%B%F{255}%1~%f%F{239} ❯  %f%b"
RPROMPT=\$vcs_info_msg_0_
