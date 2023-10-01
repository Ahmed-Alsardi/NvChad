local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"python", "go", "javascript", "typescript", "json"},
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts={
      ensure_installed = {
        "pyright",
        "mypy",
        "ruff",
        "black",

        "gopls",

        "prettier",
        "eslint-lsp",
        "typescript-language-server",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.pythonlspconfig"
      require "custom.configs.golspconfig"
      require "custom.configs.javascriptlspconfig"
    end,
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
      require("core.utils").load_mappings("gopher")
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
{
    "Exafunction/codeium.vim",
    -- loading codeium eager
    lazy = false,
    config = function()
      vim.g.codeium_enabled = true -- Enable Codeium by default
      vim.g.codeium_idle_delay = 500 -- Set the idle delay (in milliseconds)
    end,
  },
}

return plugins
