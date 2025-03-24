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
