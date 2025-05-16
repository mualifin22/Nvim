-- Load snippet dari folder custom
require("luasnip.loaders.from_lua").lazy_load({
  paths = "~/.config/nvim/lua/custom/snippets",
})

-- Autocommand supaya file php baru otomatis ada tag pembuka dan penutup
vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.php",
  callback = function()
    vim.api.nvim_buf_set_lines(0, 0, -1, false, {"<?php", "", "?>"})
    vim.api.nvim_win_set_cursor(0, {2, 0}) -- pindah kursor ke baris kedua
  end,
})
