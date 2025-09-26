-- An example nvim-lspconfig capabilities setting
local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

local markdown_capabilities = vim.tbl_deep_extend(
    'force',
    capabilities,
    {
        workspace = {
            didChangeWatchedFiles = {
                dynamicRegistration = true,
            },
        },
    }
)

vim.lsp.config("markdown_oxide", {
    capabilities = markdown_capabilities,
    on_attach = on_attach,
})
