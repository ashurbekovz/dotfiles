local cmp = require("cmp")
local compare = require('cmp.config.compare')

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ["<C-s>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ['<C-x>'] = cmp.mapping(
            cmp.mapping.complete({
                config = {
                    sources = cmp.config.sources({
                        { name = 'cmp_ai' },
                    }),
                },
            }),
            { 'i' }
        ),
    }),

    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
    }),

    sorting = {
        priority_weight = 2,
        comparators = {
            require('cmp_ai.compare'),
            compare.offset,
            compare.exact,
            compare.score,
            compare.recently_used,
            compare.kind,
            compare.sort_text,
            compare.length,
            compare.order,
        },
    },
})
