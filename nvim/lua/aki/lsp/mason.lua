require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
    ensure_installed = { "sumneko_lua", "rust_analyzer", "gopls", "pyright" },
    automatic_installation = true,
})

require("lspconfig").gopls.setup{
	on_attach = require("aki.lsp.handlers").on_attach,
	capabilities = require("aki.lsp.handlers").capabilities,
}
require("lspconfig").rust_analyzer.setup{
	on_attach = require("aki.lsp.handlers").on_attach,
	capabilities = require("aki.lsp.handlers").capabilities,
}
require("lspconfig").pyright.setup{
	on_attach = require("aki.lsp.handlers").on_attach,
	capabilities = require("aki.lsp.handlers").capabilities,
}
