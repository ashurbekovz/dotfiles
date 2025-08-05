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
            require("configs/cmp")
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
        version = "^0.1.7",
        config = function()
            require("configs/lsp")
        end
    },

    {
        "williamboman/mason.nvim",
        version = "^1.8.0",
        build = ":MasonUpdate",
    },

    {
        "williamboman/mason-lspconfig.nvim",
        version = "^1.20.0",
    },

    {
        "knubie/vim-kitty-navigator",
        build = "cp ./*.py ~/.config/kitty/",
    },

    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("configs/catppuccin")
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
        config = function()
            vim.g.undotree_WindowLayout = 3
            vim.g.undotree_SplitWidth = 50
        end
    },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("configs/lualine")
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
            require("configs/formatter")
        end
    },

    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        dependencies = {
            "saadparwaiz1/cmp_luasnip",
        },
        config = function()
            require("configs/luasnip")
        end
    },

    {
        "milanglacier/minuet-ai.nvim",
        config = function()
            require("configs/minuet")
        end,
        dependencies = {
            "nvim-lua/plenary.nvim",
        }
    },

    {
        "olimorris/codecompanion.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
            "nvim-lualine/lualine.nvim",
        },
        config = function()
            require("configs/codecompanion")
        end,
        init = function()
            require("configs/lualine_codecompanion").init()
        end,
    },

    {
        "echasnovski/mini.nvim",
        version = "*",
        config = function()
            require("configs/mini")
        end
    },

    {
        "ggandor/leap.nvim",
        lazy = false,
        dependencies = {
            "tpope/vim-repeat",
        },
        config = function()
            require('leap').set_default_mappings()
        end
    },

    {
        "mikavilpas/yazi.nvim",
        event = "VeryLazy",
        dependencies = {
            { "nvim-lua/plenary.nvim", lazy = true },
        },
        opts = {
            open_for_directories = true,
            yazi_floating_window_border = 'single',
            floating_window_scaling_factor = 1,
        },
        init = function()
            vim.g.loaded_netrwPlugin = 1
        end,
    }
}
