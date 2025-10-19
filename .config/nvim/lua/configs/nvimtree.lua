local function on_attach(bufnr)
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

    local function opts(desc)
      return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    api.config.mappings.default_on_attach(bufnr)
    vim.keymap.set("n", "l", edit_or_open, opts("edit_or_open"))
end

require("nvim-tree").setup({
    hijack_cursor = true,
    on_attach = on_attach,
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        float = {
            enable = true,
            open_win_config = {
                relative = "editor",
                width = 120,
                height = 33,
                row = (vim.o.lines - 33) / 2 - 1,
                col = (vim.o.columns - 120) / 2,
            },
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
})
