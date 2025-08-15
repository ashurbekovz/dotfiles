local fzflua = require('fzf-lua')

fzflua.setup({
    winopts = {
        height = 1,
        width  = 1,
    },
    grep = {
        rg_opts = "--column -n --hidden --glob '!.git/*'",
    },
    actions = {
        files = {
            ['default'] = fzflua.actions.file_edit,
            ["ctrl-q"] = fzflua.actions.file_sel_to_qf,
        },
        grep = {
            ['default'] = fzflua.actions.file_edit,
            ["ctrl-q"] = fzflua.actions.file_sel_to_qf,
        },
        buffers = {
            ['default'] = fzflua.actions.buf_edit,
        },
    },
    keymap = {
        fzf = {
            ["tab"] = "toggle+up",
            ["ctrl-a"] = "toggle-all",
        }
    }
})
