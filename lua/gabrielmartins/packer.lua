return require("packer").startup(function()
    use("wbthomason/packer.nvim")

    -- Git
    use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
    -- main plugins
    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- LSP
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/nvim-cmp")
 	use({'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'})
    use("onsails/lspkind-nvim")
    use("nvim-lua/lsp_extensions.nvim")
    use("glepnir/lspsaga.nvim")
    use("simrat39/symbols-outline.nvim")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")

    -- Harpooooooon
    use("ThePrimeagen/harpoon")

    -- Colorscheme section
    use("gruvbox-community/gruvbox")

    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })

    use("nvim-treesitter/playground")
    use("romgrk/nvim-treesitter-context")
end)
