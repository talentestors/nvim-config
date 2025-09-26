-- :h mason-default-settings
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- key 必须为下列网址列出的 server name，不可以随便写
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
local server_configs = {
    -- lua_ls = require("lsp.config.lua"),
    -- markdown_oxide = require("lsp.config.markdown_oxide"),
    -- ruff = require("lsp.config.ruff"),
    -- pyright = require("lsp.config.pyright"),
    -- bashls = require("lsp.config.bash"),
    -- html = require("lsp.config.html"),
    -- cssls = require("lsp.config.css"),
    -- emmet_ls = require("lsp.config.emmet"),
    -- jsonls = require("lsp.config.json"),
    -- tsserver = require("lsp.config.ts"),
    -- rust_analyzer = require("lsp.config.rust"),
    -- yamlls = require("lsp.config.yamlls"),
    -- remark_ls = require("lsp.config.markdown"),
}
-- 使用 vim.lsp.config 注册服务器
for server_name, config in pairs(server_configs) do
    config.capabilities = vim.tbl_deep_extend("force", capabilities, config.capabilities or {})
    vim.lsp.config(server_name, config)
end

-- 对于没有自定义配置的服务器，也可以直接注册
local default_servers = {
    "ts_ls", "tailwindcss", "bashls", "cssls", "dockerls",
    "emmet_ls", "html", "jsonls", "rust_analyzer", "taplo", "yamlls"
}
for _, server_name in ipairs(default_servers) do
    vim.lsp.config(server_name, { capabilities = capabilities })
end
