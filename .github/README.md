`git clone --bare https://github.com/prok20/dotfiles.git $HOME/.cfg`

How to install:
https://www.atlassian.com/git/tutorials/dotfiles

Install brew:
https://brew.sh/

Install JetBrainsMono Nerd Font:
`brew tap homebrew/cask-fonts`
`brew install --cask font-jetbrains-mono-nerd-font`

Install Alacritty (terminal emulator):
`brew install --cask alacritty`

`brew install nvim tmux ripgrep tree python`

Alternatives for MacOS Command line utilities:
`brew install git`

Install oh-my-zsh:
`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

Install powerlevel10k theme into oh-my-zsh:
`git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`

Oh-my-zsh plugins:

`git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins $ZSH_CUSTOM/plugins/autoupdate`

`git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting`

`git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

Nvim Packer (package manager):
`git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim`
then nvim -> `:PackerSync`

