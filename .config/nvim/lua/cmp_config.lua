local cmp = require("cmp")

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ["<C-s>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<C-x>"] = cmp.mapping(
            cmp.mapping.complete({
                config = {
                    sources = cmp.config.sources({
                        { name = "cmp_ai" },
                    }),
                    completion = {
                        completeopt = "preview"
                    },
                },
            }),
            { "i" }
        ),
    }),

    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
    }),
})
