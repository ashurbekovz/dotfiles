return {
    -- Telescope
    "nvim-telescope/telescope.nvim",

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate", -- Обновит парсеры при установке
        config = function()
            require("treesitter")
        end,
    }
}
