require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- Visual Multi keymaps ala VSCode
map("n", "<C-d>", "<Plug>(VM-Find-Under)", { noremap = false })
map("v", "<C-d>", "<Plug>(VM-Find-Subword-Under)", { noremap = false })

map('i', '<C-l>', function ()
  vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
end, { desc = 'Copilot Accept', noremap = true, silent = true })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
