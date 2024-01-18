local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "custom.configs.lint"
    end
  },
  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    opts = function ()
      return require "custom.configs.formatter"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "intelephense",
        "vue-language-server",
        "eslint-lsp",
        "php-cs-fixer",
        "phpstan",
        "prettier"
      }
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "php",
        "rust",
        "javascript",
        "typescript",
        "vue",
        "sql",
        "json"
      }
    }
  },
  {
    "tpope/vim-dadbod",
    ft = "sql"
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    ft = "sql"
  },
  {
    "kristijanhusak/vim-dadbod-completion",
    ft = "sql"
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function (_, opts)
      require('rust-tools').setup(opts)
    end
  },
  {
    "mfussenegger/nvim-dap",
  },
  {
    "saecki/crates.nvim",
    ft = {"rust", "toml"},
    config = function (_, opts)
      local crates = require('crates')
      crates.setup(opts)
      crates.show()
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function ()
      local M = require "plugins.configs.cmp"
      table.insert(M.sources, {name = "crates"})
      return M
    end
  },
  {
    "jwalton512/vim-blade",
    ft="blade"
  },
  {
    "joerdav/templ.vim",
    ft="templ"
  }
}

return plugins;
