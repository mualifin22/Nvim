local lspconfig = require "lspconfig"
local configs = require "nvchad.configs.lspconfig"

-- Daftar server yang ingin kamu aktifkan
local servers = { "html", "cssls", "intelephense" }

-- Ambil setting default NvChad
local default_config = configs.defaults

for _, lsp in ipairs(servers) do
  if lsp == "intelephense" then
    lspconfig[lsp].setup(vim.tbl_deep_extend("force", default_config, {
      settings = {
        intelephense = {
          files = {
            associations = { "*.php", "*.inc" },
            maxSize = 5000000,
          },
        },
      },
    }))
  else
    lspconfig[lsp].setup(default_config)
  end
end
