local map = vim.keymap.set

map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Window left" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Window right" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Window down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Window up" })

map("n", "<leader>pv", "<cmd>Ex<CR>")

map("n", "<leader>ff", "<cmd>FzfLua files<CR>")
map("n", "<leader>fg", "<cmd>FzfLua live_grep<CR>")
map("n", "<leader>fb", "<cmd>FzfLua buffers<CR>")

map("n", "<leader>u", vim.cmd.UndotreeToggle)

map("n", "<C-n>", ":NvimTreeToggle<CR>")
map('n', '<leader>e', ':NvimTreeFindFile<CR>')

local harpoon = require("harpoon")
harpoon:setup()

map("n", "<leader>a", function() harpoon:list():add() end)
map("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

map("n", "<leader>j1", function() harpoon:list():select(1) end)
map("n", "<leader>j2", function() harpoon:list():select(2) end)
map("n", "<leader>j3", function() harpoon:list():select(3) end)
map("n", "<leader>j4", function() harpoon:list():select(4) end)

map("n", "<leader>sd", vim.diagnostic.open_float)

map("n", "<leader>r", vim.lsp.buf.rename)
map("n", "gd", vim.lsp.buf.definition)
map("n", "gD", vim.lsp.buf.declaration)
map("n", "K", vim.lsp.buf.hover) -- information about symbol
map("n", "gr", vim.lsp.buf.references)
map("n", "gs", vim.lsp.buf.signature_help)
map("n", "gi", vim.lsp.buf.implementation)
map("n", "gt", vim.lsp.buf.type_definition)
map("n", "<leader>gw", vim.lsp.buf.document_symbol) -- show all symbols in document
map("n", "<leader>gW", vim.lsp.buf.workspace_symbol) -- search symbol in document
map("n", "<leader>r", vim.lsp.buf.rename)
map("n", "<leader>=", vim.lsp.buf.format)
map("n", "<leader>af", vim.lsp.buf.code_action)
map("n", "<leader>ai", vim.lsp.buf.incoming_calls)
map("n", "<leader>ao", vim.lsp.buf.outgoing_calls)
