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
plugins=(docker colored-man-pages git zsh-autosuggestions autoupdate)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=180'

source $ZSH/oh-my-zsh.sh

# Completions section
[[ -d /opt/homebrew/share/zsh/site-functions ]] && fpath+=(/opt/homebrew/share/zsh/site-functions)
command -v kubectl >/dev/null 2>&1 && source <(kubectl completion zsh)

# Exports section
export EDITOR='nvim'

# Alias section
alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'
source ~/.config/zshrc_imports/aliases.sh

# Custom local additions
source ~/.config/zshrc_imports/local.sh

# Footer section
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[[ /opt/homebrew/bin/kubectl ]] && source <(kubectl completion zsh)

