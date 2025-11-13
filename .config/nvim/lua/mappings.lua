local map = vim.keymap.set

map("n", "<C-h>", "<cmd> KittyNavigateLeft<CR>", { desc = "Window left" })
map("n", "<C-l>", "<cmd> KittyNavigateRight<CR>", { desc = "Window right" })
map("n", "<C-j>", "<cmd> KittyNavigateDown<CR>", { desc = "Window down" })
map("n", "<C-k>", "<cmd> KittyNavigateUp<CR>", { desc = "Window up" })

local fzf_lua = require("fzf-lua")
map("n", "<leader>ff", "<cmd>FzfLua files<CR>")
map("n", "<leader>fg", "<cmd>FzfLua live_grep<CR>")
map("n", "<leader>fb", "<cmd>FzfLua buffers<CR>")
map("n", "<leader>fr", function() fzf_lua.resume() end)

map("n", "<leader>u", vim.cmd.UndotreeToggle)

local harpoon = require("harpoon")
harpoon:setup()

map("n", "<leader>a", function() harpoon:list():add() end)
map("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

map("n", "<leader>j1", function() harpoon:list():select(1) end)
map("n", "<leader>j2", function() harpoon:list():select(2) end)
map("n", "<leader>j3", function() harpoon:list():select(3) end)
map("n", "<leader>j4", function() harpoon:list():select(4) end)
map("n", "<leader>jq", function() harpoon:list():select(5) end)
map("n", "<leader>jw", function() harpoon:list():select(6) end)
map("n", "<leader>je", function() harpoon:list():select(7) end)
map("n", "<leader>jr", function() harpoon:list():select(8) end)

map("n", "<leader>sd", vim.diagnostic.open_float)
map("n", "<leader>r", vim.lsp.buf.rename)
map("n", "gd", vim.lsp.buf.definition)
map("n", "gD", vim.lsp.buf.declaration)
map("n", "K", vim.lsp.buf.hover) -- information about symbol
map("n", "gr", function() fzf_lua.lsp_references() end)
map("n", "gs", vim.lsp.buf.signature_help)
map("n", "gi", vim.lsp.buf.implementation)
map("n", "gt", vim.lsp.buf.type_definition)
map("n", "<leader>gw", vim.lsp.buf.document_symbol)  -- show all symbols in document
map("n", "<leader>gW", vim.lsp.buf.workspace_symbol) -- search symbol in document
map("n", "<leader>r", vim.lsp.buf.rename)
map("n", "<leader>=", vim.lsp.buf.format)
map("n", "<leader>af", vim.lsp.buf.code_action)
map("n", "<leader>ai", vim.lsp.buf.incoming_calls)
map("n", "<leader>ao", vim.lsp.buf.outgoing_calls)

map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>")

map("n", "<Esc><Esc>", "<cmd>nohlsearch<CR>")

map("n", "<Up>", ":resize +5<enter>", { desc = "Increase current split height" })
map("n", "<Down>", ":resize -5<enter>", { desc = "Decreate current split height" })
map("n", "<Left>", ":vertical resize +5<enter>", { desc = "Increate current split width" })
map("n", "<Right>", ":vertical resize -5<enter>", { desc = "Descrease current split width" })

map("n", "d", '"_d', { desc = "Delete without yanking" })
map("n", "D", '"_D', { desc = "Delete until end of line forward without yanking" })
map("v", "d", '"_d', { desc = "Delete without yanking" })
map("n", "<leader>d", "d", { desc = "Delete with yanking" })
map("n", "<leader>D", "D", { desc = "Delete until end line forward with yanking" })
map("v", "<leader>d", "d", { desc = "Delete with yanking" })

map("n", "x", '"_x', { desc = "Cut symbol under cursor without yanking" })
map("n", "X", '"_X', { desc = "Cut symbol before cursor without yanking" })
map("v", "X", "<nop>")
map("v", "x", '"_x', { desc = "Cut without yanking" })
map("n", "<leader>x", "x", { desc = "Cut symbol under cursor with yanking" })
map("v", "<leader>x", "x", { desc = "Cut with yanking" })

map("n", "c", '"_c', { desc = "Cut without yanking and go to insert mode" })
map("n", "C", '"_C', { desc = "Cut until end of line without yanking and go to insert mode" })
map("v", "c", '"_c', { desc = "Cut without yanking and go to insert mode" })
map("n", "<leader>c", "c", { desc = "Cut with yanking and go to insert mode" })
map("n", "<leader>C", "C", { desc = "Cut until end of line with yanking and go to insert mode" })
map("v", "<leader>c", "c", { desc = "Cut with yanking and go to insert mode" })

map("v", "p", '"_dp', { desc = "Paste without yanking selected text" })
