vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
  'kyazdani42/nvim-tree.lua',
   requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },

  use { "ellisonleao/gruvbox.nvim" },

  use 'nvim-treesitter/nvim-treesitter',
  use {
    'numToStr/Comment.nvim',
},
use 'JoosepAlviste/nvim-ts-context-commentstring',
use("windwp/nvim-autopairs"),
	use("windwp/nvim-ts-autotag"),


}
end)
