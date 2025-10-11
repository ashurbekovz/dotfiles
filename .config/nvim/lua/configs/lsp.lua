local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

mason.setup()
mason_lspconfig.setup({
  ensure_installed = { "gopls", "pyright", "clangd", "lua_ls" },
})

mason_lspconfig.setup_handlers({
  function(server_name)
    local opts = { capabilities = capabilities }
    if server_name == "lua_ls" then
      opts.settings = {
        Lua = { diagnostics = { globals = { "vim" } } },
      }
    end
    lspconfig[server_name].setup(opts)
  end,
})

