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
