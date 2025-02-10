return {
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',

    'nvim-telescope/telescope.nvim',

    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            require("treesitter")
        end,
    },

    'neovim/nvim-lspconfig',
    {
        'williamboman/mason.nvim',
        build = ':MasonUpdate',
    },
    'williamboman/mason-lspconfig.nvim',
}
