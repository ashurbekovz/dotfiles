require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 35,
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
