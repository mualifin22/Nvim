return {
  -- Snippet engine & luasnip
  { "L3MON4D3/LuaSnip", config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },

  -- Laravel Blade syntax highlight
  { "jwalton512/vim-blade" },

  -- Optional: Blade LSP or Tailwind support if kamu pakai TailwindCSS
}
