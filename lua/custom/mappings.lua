vim.keymap.set({ "i", "s" }, "<Tab>", function()
  return require("luasnip").expand_or_jumpable()
    and "<Plug>luasnip-expand-or-jump"
    or "<Tab>"
end, { expr = true })

vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
  return require("luasnip").jumpable(-1)
    and "<Plug>luasnip-jump-prev"
    or "<S-Tab>"
end, { expr = true })


local map = vim.keymap.set

-- Jalankan Laravel serve dari dalam Neovim
map("n", "<leader>as", ":term php artisan serve<CR>", { desc = "Laravel Serve" })

-- Jalankan PHPUnit
map("n", "<leader>at", ":term ./vendor/bin/phpunit<CR>", { desc = "Run PHPUnit" })
