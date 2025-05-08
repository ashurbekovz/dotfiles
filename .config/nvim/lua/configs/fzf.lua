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
        },
        grep = {
            ['default'] = fzflua.actions.file_edit,
        },
        buffers = {
            ['default'] = fzflua.actions.buf_edit,
        },
    },
    keymap = {
        fzf = {
            ["tab"] = "toggle+up",
        }
    }
})
