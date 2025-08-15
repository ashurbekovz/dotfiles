vim.api.nvim_create_autocmd({"FileType"}, {
  pattern = "netrw",
  callback = function()
    local opts = { buffer = true, remap = true, nowait = true }
    vim.keymap.set('n', 'h', '-', opts)
    vim.keymap.set('n', 'l', '<CR>', opts)
  end
})
