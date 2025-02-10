local lspconfig = require('lspconfig')
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')

mason.setup()
mason_lspconfig.setup({
  ensure_installed = { 'gopls', 'pyright', 'clangd', 'lua_ls' },
})

mason_lspconfig.setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({
      capabilities = require('cmp_nvim_lsp').default_capabilities(),
    })
  end,
})
