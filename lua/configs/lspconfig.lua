require("nvchad.configs.lspconfig").defaults()
require("lspconfig").intelephense.setup({})

local servers = { "html", "cssls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
