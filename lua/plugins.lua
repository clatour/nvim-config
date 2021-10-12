return require('packer').startup(function() 
  use 'wbthomason/packer.nvim'                                                                                                                                                      

  use 'edkolev/promptline.vim'
  use 'edkolev/tmuxline.vim'
  use 'flazz/vim-colorschemes'

  use 'samoshkin/vim-mergetool'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'neovim/nvim-lspconfig'
  
  use 'tpope/vim-endwise'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'

  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'}
    }
  }

  use 'cespare/vim-toml'
  use 'hashivim/vim-terraform'
  use 'hashivim/vim-packer'
  use 'hashivim/vim-consul'
  use 'hashivim/vim-nomadproject'

  -- use 'neoclide/coc.nvim', {'branch': 'release'}
  use {
    'fatih/vim-go',
    run = ':GoUpdateBinaries'
  }

  use 'jvirtanen/vim-hcl'
end)
