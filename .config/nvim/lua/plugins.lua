require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- Collection of common configurations for the NVim LSP Client
  use 'neovim/nvim-lspconfig'

  -- Completion framework
  use 'hrsh7th/nvim-cmp'
  -- LSP completion source for nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp'
  -- Snippet completion source for nvim-cmp
  use 'hrsh7th/cmp-vsnip'
  -- Other completion sources
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'

  -- To enable more features of rust-analyzer
  use 'simrat39/rust-tools.nvim'

  -- Snippet engine
  use 'hrsh7th/vim-vsnip'

  -- Fuzzy finder and its requirements
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope.nvim'
end)


