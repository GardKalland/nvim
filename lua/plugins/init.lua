return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "numToStr/Comment.nvim",
    opts = {
      toggler = {
        line = "gcc", -- toggle line comment
        block = "gbc", -- toggle block comment
      },
      opleader = {
        line = "gc", -- line comment in visual mode
        block = "gb", -- block comment in visual mode
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
      },
    },
  },

  {
    "lewis6991/gitsigns.nvim",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "typescript",
        "svelte",
      },
      highlight = { enable = true },
    },
  },

  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    requires = { "nvim-tree/nvim-web-devicons" }, -- optional, for file icons
    config = function()
      require("nvim-tree").setup {
        git = {
          enable = true, -- Enable Git integration
          ignore = false, -- Do not exclude files listed in .gitignore
        },
        filters = {
          dotfiles = true, -- Show dotfiles
          custom = {}, -- Ensure no custom filters
        },
        update_focused_file = {
          enable = true,
          update_cwd = true,
        },
      }
    end,
  },
  {
    "kyazdani42/nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup {
        default = true,
      }
    end,
  },

  {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function()
      require "configs.copilot"
    end,
    lazy = false,
  },

  {
    "leafOfTree/vim-svelte-plugin",
    ft = { "svelte" },
  },
}
