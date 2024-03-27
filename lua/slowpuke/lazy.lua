local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

local plugins = {
    {
        'nvim-telescope/telescope.nvim', version = '0.1.5',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },

    'water-sucks/darkrose.nvim',

    'nvim-treesitter/nvim-treesitter', build = ':TSUpdate',
    'ThePrimeagen/harpoon',
    'mbbill/undotree',
    'tpope/vim-commentary',
    'tzachar/local-highlight.nvim',
    'm4xshen/autoclose.nvim',
    'Djancyp/better-comments.nvim',
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({})
        end
    },

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    },
}

require("lazy").setup(plugins, {})
