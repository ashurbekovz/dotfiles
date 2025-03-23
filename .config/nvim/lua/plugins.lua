return {
    {
        "nvim-lua/plenary.nvim",
        lazy = false,
    },

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
            require("configs/cmp_config")
        end
    },

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("configs/treesitter")
        end,
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require("configs/lsp")
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
    },


    {
        "ibhagwan/fzf-lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("configs/fzf")
        end
    },

    {
        "mbbill/undotree",
    },

    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("configs/nvimtree")
        end
    },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("configs/lualine_config")
            require("fzf-lua").register_ui_select()
        end
    },

    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    {
        "MeanderingProgrammer/render-markdown.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
    },

    {
        "mhartington/formatter.nvim",
        config = function()
            require("configs/formatter_config")
        end
    },

    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        dependencies = {
            "saadparwaiz1/cmp_luasnip",
        },
        config = function()
            require("configs/luasnip_config")
        end
    },
}
