#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias ff='fastfetch'

alias vim='nvim'


. "$HOME/.cargo/env" # Added by Rust
alias addDotfile='/usr/bin/git --git-dir=/home/shane/Dotfiles/ --work-tree=/home/shane' 
