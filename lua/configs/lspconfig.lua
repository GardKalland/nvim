-- Load Mason-LSPConfig's default handlers via the masonlsp file
require("configs.masonlsp").setup()

-- Custom overrides for specific servers, if needed
local lspconfig = require "lspconfig"

lspconfig.tsserver.setup {
  on_attach = function(client, bufnr)
    local opts = { buffer = bufnr, silent = true }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  end,
}
