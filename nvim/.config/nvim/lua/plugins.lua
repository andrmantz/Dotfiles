local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]]

require("packer").init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

return require("packer").startup(
    function()
        use { "wbthomason/packer.nvim", opt = true }

        use { "nvim-lua/popup.nvim" }
        use { "nvim-lua/plenary.nvim" }

        use { "LunarVim/colorschemes" }
        use { "kyazdani42/nvim-web-devicons" }
        use { "kyazdani42/nvim-tree.lua" }
        use { "nvim-treesitter/nvim-treesitter", run = ':TSUpdate' }
        use { "akinsho/bufferline.nvim" }
        use { "max397574/better-escape.nvim" }
        use { "moll/vim-bbye" }
        use { "windwp/nvim-autopairs" }
        use { "p00f/nvim-ts-rainbow" }

        -- cmp plugins
        use "hrsh7th/nvim-cmp"
        use "hrsh7th/cmp-buffer"
        use "hrsh7th/cmp-path"
        use "hrsh7th/cmp-cmdline"
        use "saadparwaiz1/cmp_luasnip"
        use "hrsh7th/cmp-nvim-lsp"

        -- snippets
        use "L3MON4D3/LuaSnip"
        use "rafamadriz/friendly-snippets"

        -- LSP
        use { "neovim/nvim-lspconfig" }
        use { "tamago324/nlsp-settings.nvim" }
        use { "jose-elias-alvarez/null-ls.nvim" }
        use { "williamboman/mason.nvim" }
        use { "williamboman/mason-lspconfig.nvim" }

        use { "lukas-reineke/indent-blankline.nvim" }
        use { "ahmedkhalf/project.nvim" }

        use { "JoosepAlviste/nvim-ts-context-commentstring" }
        use { "numToStr/Comment.nvim" }

        use { "nvim-telescope/telescope.nvim" }
        use { "nvim-telescope/telescope-fzf-native.nvim",
            requires = { "nvim-telescope/telescope.nvim" },
            run = "make" }

        use { "lewis6991/impatient.nvim" }

        use { "antoinemadec/FixCursorHold.nvim" }
        use { "lewis6991/gitsigns.nvim" }
        use { "folke/which-key.nvim" }
        use { "MunifTanjim/nui.nvim" }
        use { "akinsho/toggleterm.nvim" }
        use { "RRethy/vim-illuminate" }

        if PACKER_BOOTSTRAP then
            require("packer").sync()
        end
    end)
