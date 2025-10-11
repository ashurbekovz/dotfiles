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
