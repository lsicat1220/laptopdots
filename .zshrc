
# fastfetch -c examples/7.jsonc


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lorenzo/.zshrc'


autoload -Uz compinit 
# End of lines added by compinstall
autoload -Uz promptinit
promptinit
compinit
# source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme
source ~/EE379/Xilinx/Vitis/2024.2/settings64.sh
function mkcd () {
	mkdir $1
	cd $1
}
function nvimconf () {
	cd ~/.config/nvim/
	nvim .
}
export SUDO_EDITOR=/usr/bin/nvim
alias fcd='cd $(find -type d | fzf)'
alias hyprconf='nvim ~/.config/hypr/hyprland.conf'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias please='sudo $(fc -ln -1)'
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
ZSH_AUTOSUGGEST_STRATEGY=(completion)
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=$PATH:/home/lorenzo/.spicetify
export PATH=$PATH:/home/lorenzo/.dotnet/tools
export PATH=$PATH:/home/lorenzo/mybins
export ELECTRON_OZONE_PLATFORM_HINT="auto"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/etc/profile.d/conda.sh" ]; then
        . "/usr/etc/profile.d/conda.sh"
    else
        export PATH="/usr/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Created by `pipx` on 2025-10-01 17:22:42
export PATH="$PATH:/home/lorenzo/.local/bin"
source <(fzf --zsh)
