return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "stylua",
        "html",
        "ts_ls",
        "prettier",
        "eslint",
      },
    },
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require "configs.masonlsp"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "rafamadriz/friendly-snippets",
  },
  {
    "lewis6991/gitsigns.nvim",
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
