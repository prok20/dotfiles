# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

export PATH=$HOME/.local/bin:$PATH
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(docker colored-man-pages git zsh-autosuggestions fast-syntax-highlighting autoupdate)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=180'

source $ZSH/oh-my-zsh.sh


# Exports section
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH

export EDITOR='nvim'

# Alias section
alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'

# Footer section
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

