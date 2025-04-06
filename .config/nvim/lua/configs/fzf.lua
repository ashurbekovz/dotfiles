require('fzf-lua').setup({
    winopts = {
        height = 1,
        width  = 1,
    },
    grep = {
        rg_opts = "--column -n --hidden --glob '!.git/*'",
    },
    actions = {
        files = {
            ['default'] = require('fzf-lua').actions.file_edit,
        },
        grep = {
            ['default'] = require('fzf-lua').actions.file_edit,
        },
        buffers = {
            ['default'] = require('fzf-lua').actions.buf_edit,
        },
    },
    keymap = {
        fzf = {
            ["tab"] = "toggle+up",
        }
    }
})
