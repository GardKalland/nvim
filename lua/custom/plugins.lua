
return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server", "stylua",
        "html-lsp", "css-lsp" , "prettier"
      },
    },
  },
  
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css"
      },
    },
  },

  -- Add nvim-web-devicons plugin
  {
    "kyazdani42/nvim-web-devicons",
    config = function()
      require('nvim-web-devicons').setup {
        default = true;
      }
    end,
  },

  -- Add GitHub Copilot plugin
  {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function()
    require("configs.copilot")
    end,
    lazy = false,
  },
}
