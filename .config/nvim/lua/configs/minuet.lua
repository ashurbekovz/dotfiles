require('minuet').setup{
    provider = 'openai_compatible',
    provider_options = {
        openai_compatible = {
            api_key = 'TERM',
            end_point = 'http://127.0.0.1:1234/v1/chat/completions',
            model = 'qwen2.5-coder-14b-instruct',
            name = 'lmstudio',
            stream = true,
            optional = {
                max_tokens = 4000,
                top_p = 0.9,
                provider = {
                    sort = 'throughput',
                },
            },
        },
    },
    throttle = 500,
    debounce = 250,
    virtualtext = {
        auto_trigger_ignore_ft = { '*' },
        keymap = {
            accept = '<C-a>',
            next = '<C-x>',
            dismiss = '<C-q>',
        },
    },
    notify='debug',
}
