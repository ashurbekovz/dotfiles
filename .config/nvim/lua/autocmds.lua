vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
        vim.cmd("silent !go fmt %")
        vim.cmd("edit!")
    end,
})
