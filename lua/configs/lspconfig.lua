-- Load default configurations
require("nvchad.configs.lspconfig").defaults()

local mason = require "mason"
local mason_lspconfig = require "mason-lspconfig"
local lspconfig = require "lspconfig"

local nvlsp = require "nvchad.configs.lspconfig"

-- Initialize Mason
mason.setup()

-- Automatically ensure the listed servers are installed
local servers = { "html", "cssls", "ts_ls", "pyright", "svelte", "rust_analyzer" }
mason_lspconfig.setup {
  ensure_installed = servers,
}

-- Use a default handler for all servers
mason_lspconfig.setup_handlers {
  function(server_name)
    lspconfig[server_name].setup {
      on_attach = nvlsp.on_attach,
      on_init = nvlsp.on_init,
      capabilities = nvlsp.capabilities,
    }
  end,
}
