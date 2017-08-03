# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# Colors
eval `dircolors ~/.dir_colors/LS_COLORS/LS_COLORS`
# completion
# The following lines were added by compinstall
zstyle :compinstall filename '/home/granquet/.zshrc'

autoload -Uz compinit
compinit
setopt complete_in_word
setopt always_to_end
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# End of lines added by compinstall
#prompt
autoload -Uz promptinit
promptinit
prompt adam1
# Alias
alias vi=vim
alias ls='ls --color=auto'
alias bosch_vpn='nmcli --ask con up 201efc9f-3977-4270-beda-6e17617b0c65'
# remember previous dirs
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
zstyle ':completion:*:*:cdr:*:*' menu selection
