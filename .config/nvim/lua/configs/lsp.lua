local lspconfig = require('lspconfig')
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')
local cmp_nvim_lsp = require("cmp_nvim_lsp")

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

local capabilities = cmp_nvim_lsp.default_capabilities()

-- Go
lspconfig.gopls.setup {
    capabilities = capabilities
}

-- Python
lspconfig.pyright.setup {
    capabilities = capabilities
}

-- Lua
lspconfig.lua_ls.setup {
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }
            }
        }
    }
}

-- C++
lspconfig.clangd.setup {
    capabilities = capabilities
}
