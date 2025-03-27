require("codecompanion").setup({
    display = {
        chat = {
            window = {
                layout = "vertical",
                position = "right",
                width = 0.3,
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
                        default = "gemma-3-12b-it",
                    },
                }
            })
        end,
        my_online = function()
            return require("codecompanion.adapters").extend("openai_compatible", {
                env = {
                    url = "https://api.vsegpt.ru",
                    api_key = "cmd: echo $VSEGPT_API_KEY",
                    chat_url = "/v1/chat/completions",
                    models_endpoint = "/v1/models",
                },
                schema = {
                    model = {
                        default = "google/gemini-2.0-flash-001",
                    },
                }
            })
        end
    },
    strategies = {
        chat = {
            adapter = "my_online",
        },
        inline = {
            adapter = "my_online",
        },
    },
})
