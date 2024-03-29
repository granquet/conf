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
EDITOR=vim
# Alias
alias vi=vim
alias ls='ls --color=auto'
# remember previous dirs
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs
zstyle ':completion:*:*:cdr:*:*' menu selection
