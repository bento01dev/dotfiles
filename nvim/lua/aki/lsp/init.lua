local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("aki.lsp.lsp-installer")
require("aki.lsp.handlers").setup()
