return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
  },
  {
    "williamboman/mason-lspconfig.nvim",
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("configs.catppuccin")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("configs.lualine")
      require("fzf-lua").register_ui_select()
    end,
  },

  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("configs.fzf")
    end,
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "knubie/vim-kitty-navigator",
    build = "cp ./*.py ~/.config/kitty/",
  },

  {
    "echasnovski/mini.nvim",
    version = "*",
    config = function()
      require("configs.mini")
    end,
  },
  {
    "ggandor/leap.nvim",
    dependencies = { "tpope/vim-repeat" },
    lazy = false,
    config = function()
      require("leap").set_default_mappings()
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("configs.treesitter")
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      require("configs.cmp")
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("configs.lsp")
    end,
  },

  {
    "mhartington/formatter.nvim",
    config = function()
      require("configs.formatter")
    end,
  },

  {
    "mbbill/undotree",
    config = function()
      vim.g.undotree_WindowLayout = 3
      vim.g.undotree_SplitWidth = 50
    end,
  },
}

