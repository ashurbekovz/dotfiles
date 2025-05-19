require("codecompanion").setup({
    display = {
        chat = {
            window = {
                layout = "float",
                height = 0.85,
                width = 0.7,
            },
        },
    },
    adapters = {
        my_local = function()
            return require("codecompanion.adapters").extend("openai_compatible", {
                env = {
                    url = "http://127.0.0.1:1234",
                    api_key = "NO_API_KEY",
                    chat_url = "/v1/chat/completions",
                    models_endpoint = "/v1/models",
                },
                schema = {
                    model = {
                        default = "unsloth/QwQ-32B-GGUF",
                    },
                }
            })
        end,
        vsegpt = function()
            return require("codecompanion.adapters").extend("openai_compatible", {
                env = {
                    url = "https://api.vsegpt.ru",
                    api_key = "cmd: echo $VSEGPT_API_KEY",
                    chat_url = "/v1/chat/completions",
                    models_endpoint = "/v1/models",
                },
                schema = {
                    model = {
                        default = "deepseek/deepseek-chat-0324-alt-fast",
                    },
                }
            })
        end
    },
    strategies = {
        chat = {
            adapter = "vsegpt",
        },
        inline = {
            adapter = "vsegpt",
        },
    },
})
