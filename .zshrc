# gitのブランチ名表示
autoload -Uz add-zsh-hook vcs_info
add-zsh-hook precmd vcs_info
zstyle ':vcs_info:git:*' formats '(%b)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a)'
setopt PROMPT_SUBST
PROMPT='%F{cyan}%1~%f %F{green}${vcs_info_msg_0_}%f %# '

