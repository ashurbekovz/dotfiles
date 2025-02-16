local map = vim.keymap.set

map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Window left" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Window right" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Window down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Window up" })

map("n", "<leader>pv", "<cmd>Ex<CR>")

map('n', '<leader>f', ":lua require('fzf-lua').files()<CR>", { noremap = true, silent = true })
map('n', '<leader>g', ":lua require('fzf-lua').grep()<CR>", { noremap = true, silent = true })

map('n', '<leader>ff', "<cmd>FzfLua files<CR>", { noremap = true, silent = true })
map('n', '<leader>fg', "<cmd>FzfLua live_grep<CR>",  { noremap = true, silent = true })
map('n', '<leader>fb', "<cmd>FzfLua buffers<CR>", { noremap = true, silent = true })

map('n', '<leader>u', vim.cmd.UndotreeToggle)




