require('minuet').setup{
    provider = 'openai_compatible',
    provider_options = {
        openai_compatible = {
            api_key = 'VSEGPT_API_KEY',
            end_point = 'https://api.vsegpt.ru/v1/chat/completions',
            model = 'deepseek/deepseek-chat-0324-alt-fast',
            name = 'vsegpt',
            stream = true,
            optional = {
                max_tokens = 10000,
                top_p = 0.9,
                provider = {
                    sort = 'throughput',
                },
            },
        },
    },
    throttle = 1000,
    debounce = 500,
    virtualtext = {
        auto_trigger_ignore_ft = { '*' },
        keymap = {
            accept = '<C-a>',
            next = '<C-x>',
            dismiss = '<C-q>',
        },
    },
    request_timeout = 5,
    notify='debug',
}
