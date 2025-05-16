return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
 -- Plugin PHP LSP & tools
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").intelephense.setup {}
    end,
  },

  -- Autocompletion (sudah dihandle oleh NvChad default via nvim-cmp)
  -- Pastikan php snippet tersedia
  {
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },

  -- PHP CS Fixer or Prettier alternative (via conform)
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        php = { "php_cs_fixer" }, -- Pastikan php-cs-fixer terinstal
      },
    },
  },

  -- Optional: PHPUnit test runner
  {
    "nvim-neotest/neotest",
    dependencies = {
      "olimorris/neotest-phpunit",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-phpunit")({
            phpunit_cmd = function()
              return "vendor/bin/phpunit"
            end,
          }),
        },
      })
    end,
  },

-- HTML LSP
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.html.setup({})
    end,
  },

  -- Friendly snippets (HTML, CSS, JS, dsb)
  {
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },

  -- Conform formatter untuk HTML
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        html = { "prettierd", "prettier" }, -- gunakan yang terinstall
      },
    },
  },

  -- Optional: Emmet support
  {
    "mattn/emmet-vim",
    ft = { "html", "css", "javascript", "typescriptreact", "javascriptreact" },
  },
  {
    "mg979/vim-visual-multi",
    branch = "master",
    lazy = false,
  },
  {
    "github/copilot.vim",
    lazy = false,
    config = function() -- Mapping tab is already used in NvChad
      vim.g.copilot_no_tab_map = true; -- Disable tab mapping
      vim.g.copilot_assume_mapped = true; -- Assume that the mapping is already done
    end
  }
}
