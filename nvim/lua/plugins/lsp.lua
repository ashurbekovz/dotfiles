local lspconfig = require('lspconfig')

lspconfig.gopls.setup({
  on_attach = function(client, bufnr) end,
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
})

local cmp = require'cmp'
cmp.setup({
  mapping = {
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' }
  }, {
    { name = 'buffer' },
  })
})

vim.g.go_gopls_enabled = 1
