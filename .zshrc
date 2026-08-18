# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -x /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
elif (( $+commands[brew] )); then
  eval "$(brew shellenv)"
fi

export PATH=$HOME/.local/bin:$PATH
export PATH="/Applications/IntelliJ IDEA.app/Contents/MacOS:${PATH}"

if [[ -n ${HOMEBREW_PREFIX:-} ]]; then
  export PKG_CONFIG_PATH="${HOMEBREW_PREFIX}/opt/mysql-client/lib/pkgconfig${PKG_CONFIG_PATH:+:$PKG_CONFIG_PATH}"
  [[ -d "${HOMEBREW_PREFIX}/share/zsh/site-functions" ]] && fpath=("${HOMEBREW_PREFIX}/share/zsh/site-functions" $fpath)
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(docker colored-man-pages git zsh-autosuggestions autoupdate)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=180'

source "$ZSH/oh-my-zsh.sh"

# Completions section
if (( $+commands[kubectl] )); then
  source <(kubectl completion zsh)
fi

# Exports section
export EDITOR='nvim'

# Alias section
alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'
[[ -r "$HOME/.config/zshrc_imports/aliases.sh" ]] && source "$HOME/.config/zshrc_imports/aliases.sh"

# Custom local additions
[[ -r "$HOME/.config/zshrc_imports/local.sh" ]] && source "$HOME/.config/zshrc_imports/local.sh"

# Footer section
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export UV_KEYRING_PROVIDER=subprocess
