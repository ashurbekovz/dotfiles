local api = require("nvim-tree.api")

local function edit_or_open()
  local node = api.tree.get_node_under_cursor()
  if node.nodes ~= nil then
    api.node.open.edit()
  else
    api.node.open.edit()
    api.tree.close()
  end
end

require("nvim-tree").setup({
    hijack_cursor = true,
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = function()
            return vim.o.columns
        end,
        float = {
            enable = false, 
        },
    },
    renderer = {
        special_files = {},
        highlight_modified = "name",
        icons = {
            show = {
                file = true,
                folder = true,
                git = false,
                modified = false,
            },
        },
    },
    update_focused_file = {
        enable = true,
        update_root = {
            enable = false,
            ignore_list = {},
        },
    },
    modified = {
        enable = true,
    },
    git = {
        enable = false,
    },
    filters = {
        dotfiles = false,
    },
    on_attach = function (bufnr)
        vim.keymap.set("n", "l", edit_or_open)
        vim.keymap.set("n", "H", api.tree.collapse_all)
    end,
})
