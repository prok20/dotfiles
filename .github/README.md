# Dotfiles

This repository is a bare Git repository stored at `~/.cfg`, with `$HOME` as
its working tree. The `config` shell alias runs Git against that repository, so
tracked dotfiles can be managed without symlinks or a separate checkout.

Tracked configuration includes Zsh, Git, Ghostty, tmux, Neovim, and IdeaVim.
Machine-local configuration, credentials, tokens, and SSH material must remain
untracked.

## Bootstrap

Prerequisites:

- macOS with [Homebrew](https://brew.sh/)
- SSH access to GitHub for `git@github.com:prok20/dotfiles.git`

Install the command-line tools and terminal dependencies:

```sh
brew install git neovim tmux ripgrep tree python
brew install --cask ghostty font-jetbrains-mono-nerd-font
```

Clone the repository, define the command for the current shell, and hide
untracked home-directory files from its status output:

```sh
git clone --bare git@github.com:prok20/dotfiles.git "$HOME/.cfg"

config() {
  /usr/bin/git --git-dir="$HOME/.cfg" --work-tree="$HOME" "$@"
}

config config --local status.showUntrackedFiles no
config checkout
```

`config checkout` can report conflicts when files already exist in the home
directory. Move or back up only the conflicting files, then rerun the command.
Do not overwrite credentials or machine-specific configuration blindly.

The checked-out `.zshrc` makes the alias permanent for future Zsh sessions:

```sh
alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'
```

The Git configuration signs commits using 1Password's SSH signing helper.
Install and configure 1Password before committing, or change the Git signing
configuration for the new machine.

## Shell Setup

Install Oh My Zsh, the Powerlevel10k theme, and the enabled Oh My Zsh plugins:

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
  "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins \
  "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/autoupdate"
git clone https://github.com/zsh-users/zsh-autosuggestions \
  "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
```

Ghostty is configured to use the JetBrainsMono Nerd Font installed above.

## Daily Workflow

Use `config` instead of `git` when operating on tracked dotfiles:

```sh
config status
config diff -- .zshrc
config add -- .zshrc
config commit -m "Update Zsh configuration"
config push
```

To update this machine from GitHub:

```sh
config pull --ff-only
```

The `--` separates Git revisions and options from file paths. It is especially
useful for dotfile paths and prevents ambiguous file names from being
interpreted as revisions or options.
