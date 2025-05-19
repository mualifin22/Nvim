require("luasnip.loaders.from_lua").lazy_load({
  paths = "~/.config/nvim/lua/custom/snippets",
})

require("custom.snippets.html")
require("custom.snippets.php")
