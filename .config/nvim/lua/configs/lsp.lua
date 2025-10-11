local mason = require("mason")
local mr = require("mason-registry")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

mason.setup({ ui = { border = "rounded" } })

local servers = {
    { mason_name = "lua-language-server", lsp_name = "lua_ls" },
    { mason_name = "pyright", lsp_name = "pyright" },
    { mason_name = "gopls", lsp_name = "gopls" },
    { mason_name = "clangd", lsp_name = "clangd" },
}

for _, s in ipairs(servers) do
    local ok, pkg = pcall(mr.get_package, s.mason_name)
    if ok and not pkg:is_installed() then
        vim.notify("Installing " .. s.mason_name .. " via Mason...", vim.log.levels.INFO)
        pkg:install()
    end
end

local root_pattern = require("lspconfig.util").root_pattern  -- этот модуль еще работает
local default_root = root_pattern(".git", ".") or vim.loop.cwd()

for _, s in ipairs(servers) do
    local cfg = vim.tbl_deep_extend("force", {}, {
        name = s.lsp_name,
        capabilities = capabilities,
        autostart = true,
        root_dir = default_root,
        settings = {},
    }, {})

    if s.lsp_name == "lua_ls" then
        cfg.settings = {
            Lua = {
                diagnostics = {
                    globals = { "vim" },
                },
            },
        }
    end

    local lsp_def = vim.lsp.config[s.lsp_name]

    if lsp_def then
        vim.lsp.start(vim.tbl_deep_extend("force", lsp_def, cfg))
    else
        local path = mr.get_package(s.mason_name):get_install_path()
        local bin = nil

        if s.lsp_name == "lua_ls" then bin = path .. "/bin/lua-language-server"
        elseif s.lsp_name == "gopls" then bin = path .. "/bin/gopls"
        elseif s.lsp_name == "pyright" then bin = path .. "/node_modules/.bin/pyright-langserver"
        elseif s.lsp_name == "clangd" then bin = path .. "/bin/clangd"
        end

        if bin and vim.fn.filereadable(bin) == 1 then
            cfg.cmd = { bin }
            vim.lsp.start(cfg)
        else
            vim.notify("No runnable binary found for " .. s.lsp_name, vim.log.levels.WARN)
        end
    end
end

