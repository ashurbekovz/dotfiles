local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
    group = "__formatter__",
    callback = function()
        local ok, formatter_config = pcall(require, "formatter.config")
        if not ok then
            return
        end

        local supported = formatter_config.values.filetype or {}
        local ft = vim.bo.filetype

        if supported[ft] then
            vim.cmd("silent! FormatWrite")
        end
    end,
})

