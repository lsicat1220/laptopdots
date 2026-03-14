#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
fastfetch --load-config examples/7.jsonc
function mkcd () {
	mkdir $1
	cd $1
}
export SUDO_EDITOR=/usr/bin/nvim
alias fcd='cd $(find -type d | fzf)'
alias hyprctl='nvim ~/.config/hypr/hyprland.conf'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
