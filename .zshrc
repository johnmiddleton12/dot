# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#alias ll='ls -alF'
#alias la='ls -A'
#alias l='ls -CF'
alias ls='exa --icons'
alias la='exa --icons -a'
alias ll='exa --long -a --icons'

alias uva='cd /mnt/c/Users/jpmaw/OneDrive\ -\ University\ Of\ Virginia/CS2150'

#alias vi='vim'
alias vi="$HOME/nvim/nvim.appimage"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

alias icloud='cd /mnt/c/Users/jpmaw/iCloudDrive/iCloud~dk~simonbs~Scriptable/'

alias nvim="$HOME/nvim/nvim.appimage"

function mkcd
{
    dir="$*";
    mkdir -p "$dir" && cd "$dir";
}
