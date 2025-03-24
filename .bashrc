#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Set nvim to be the default editor
export EDITOR=nvim

# Set Custom Aliases Here
alias ff='fastfetch'
alias vim='nvim'
alias yz='yazi'

# When using yazi this will change the pwd on exit
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

. "$HOME/.cargo/env" # Added by Rust

# Alias for managing the Dotfile Bare repo
alias addDotfile='/usr/bin/git --git-dir=/home/shane/Dotfiles/ --work-tree=/home/shane' 
alias pushDofiles='git --git-dir=$HOME/Dotfiles/ --work-tree=$HOME push -u origin master'


eval "$(starship init bash)"
