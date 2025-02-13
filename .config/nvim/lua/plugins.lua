return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip"
        },
        config = function()
            require("cmp_config")
        end
    },

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("treesitter")
        end,
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require("lsp")
        end
    },

    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
    },

    "williamboman/mason-lspconfig.nvim",

    "christoomey/vim-tmux-navigator",

    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                transparent_background = true,
                integrations = {
                    treesitter = true,
                    telescope = true,
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    which_key = true,
                }
            })
            vim.cmd.colorscheme "catppuccin"
        end
    }
}
