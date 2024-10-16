require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-l>", ":nohlsearch<CR>")

-- navigate between splits with ctrl + N and ctrl + P
vim.keymap.set('n', '<C-n>', '<C-w>w', {silent = true})
vim.keymap.set('n', '<C-p>', '<C-w>W', {silent = true})

vim.keymap.set('n', '<S-n>', ':NvimTreeOpen<CR>', {silent=true})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
