local map = vim.keymap.set

map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Window left" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Window right" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Window down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Window up" })

map("n", "<leader>pv", "<cmd>Ex<CR>")

map('n', '<leader>ff', "<cmd>FzfLua files<CR>")
map('n', '<leader>fg', "<cmd>FzfLua live_grep<CR>")
map('n', '<leader>fb', "<cmd>FzfLua buffers<CR>")

map('n', '<leader>u', vim.cmd.UndotreeToggle)

map('n', '<C-n>', ':NvimTreeToggle<CR>')
