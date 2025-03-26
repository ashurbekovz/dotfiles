require("codecompanion").setup({
    adapters = {
        my_gemma = function()
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
        end
    },
    strategies = {
        chat = {
            adapter = "my_gemma",
        },
        inline = {
            adapter = "my_gemma",
        },
    },
})
