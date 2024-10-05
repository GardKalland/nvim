return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

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
        "html-lsp", "css-lsp", "prettier"
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

{
  "nvim-tree/nvim-tree.lua",
  requires = { "nvim-tree/nvim-web-devicons" }, -- optional, for file icons
  config = function()
    require("nvim-tree").setup {
      filters = {
        dotfiles = false,  -- Set to true if you want to hide dotfiles
      },
    }
  end,
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
},

require('telescope').setup {
  defaults = {
    file_ignore_patterns = { "node_modules" },  -- You can adjust this if you want to exclude certain folders
    find_command = { 'rg', '--hidden', '--files' },  -- This ensures hidden files are shown
  }
}
