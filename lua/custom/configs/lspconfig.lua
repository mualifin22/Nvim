local lspconfig = require("lspconfig")

-- Load default config NvChad
local default_config = require("nvchad.configs.lspconfig").setup()

-- Setup intelephense for PHP
lspconfig.intelephense.setup({
  on_attach = default_config.on_attach,
  capabilities = default_config.capabilities,
  settings = {
    intelephense = {
      files = {
        maxSize = 5000000;
      },
      diagnostics = {
        enable = true,
      },
      environment = {
        includePaths = {"./vendor/phpstan/phpstan/src"},
      }
    }
  }
})

-- Optional: Setup for Blade files (laravel templates)
lspconfig.volar.setup({ -- or use 'blade' language server if available
  filetypes = {"blade", "html", "php"}
})
