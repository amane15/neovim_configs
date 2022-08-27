vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
    }
    use "ellisonleao/gruvbox.nvim"

    use 'nvim-treesitter/nvim-treesitter'
    use 'numToStr/Comment.nvim'

    use 'JoosepAlviste/nvim-ts-context-commentstring'
    use("windwp/nvim-autopairs")
    use("windwp/nvim-ts-autotag")


    use "nvim-lua/plenary.nvim"
    use 'neovim/nvim-lspconfig'
    use "williamboman/nvim-lsp-installer"
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    use 'nvim-lualine/lualine.nvim'

    use 'lewis6991/gitsigns.nvim'

    use 'nvim-telescope/telescope-fzf-native.nvim'
    use 'nvim-telescope/telescope.nvim'

    use 'simrat39/rust-tools.nvim'

end)
