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

local harpoon = require("harpoon")
harpoon:setup()

map("n", "<leader>a", function() harpoon:list():add() end)
map("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

map("n", "<leader>j1", function() harpoon:list():select(1) end)
map("n", "<leader>j2", function() harpoon:list():select(2) end)
map("n", "<leader>j3", function() harpoon:list():select(3) end)
map("n", "<leader>j4", function() harpoon:list():select(4) end)
