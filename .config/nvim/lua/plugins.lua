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
    },


    {
        'ibhagwan/fzf-lua',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require("fzf")
        end
    },

    {
        'mbbill/undotree',
    },

    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require("nvimtree")
        end
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require("lualine_config")
        end
    },

    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
        opts = {
            file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
    },

    {
        "yetone/avante.nvim",
        event = "VeryLazy",
        lazy = false,
        version = false,
        opts = {
            provider = "openai",
            openai = {
                endpoint = "https://api.vsegpt.ru/v1",
                model = "google/gemini-2.0-flash-lite-001",
                timeout = 10000,
                temperature = 0.1,
                max_tokens = 4096,
            },
        },
        build = "make",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "stevearc/dressing.nvim",
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            --- The below dependencies are optional,
            "hrsh7th/nvim-cmp",
            "ibhagwan/fzf-lua",
            "nvim-tree/nvim-web-devicons",
            'MeanderingProgrammer/render-markdown.nvim',
        },
    }
}
