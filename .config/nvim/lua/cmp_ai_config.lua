local cmp_ai = require('cmp_ai.config')

cmp_ai:setup({
    max_lines = 100,
    provider = 'Tabby',
    notify = true,
    notify_callback = function(msg)
        vim.notify(msg)
    end,
    run_on_every_keystroke = true,
})
