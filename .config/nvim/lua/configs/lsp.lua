require("mason").setup()

require("mason-lspconfig").setup({
     ensure_installed = { "gopls", "pyright", "clangd", "lua_ls" },
     automatic_installation = true,
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("gopls", {
     capabilities = capabilities,
})

vim.lsp.config("pyright", {
     capabilities = capabilities,
})

vim.lsp.config("clangd", {
     capabilities = capabilities,
})

vim.lsp.config("lua_ls", {
     capabilities = capabilities,
     settings = {
          Lua = {
               runtime = { version = "LuaJIT" },
               diagnostics = { globals = { "vim", "require" } },
          },
     },
})

