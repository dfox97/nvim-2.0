require('lab').setup {
  code_runner = {
    enabled = true,
  },
  quick_data = {
    enabled = true,
  }
}

--[[ vim.keymap.set({'n', '<F4>', ':Lab code stop<CR>' })
vim.keymap.set({'n', '<F5>', ':Lab code run<CR>' })
vim.keymap.set({'n', '<F6>', ':Lab code panel<CR>' }) ]]

vim.api.nvim_set_keymap('n', '<F4>', ':Lab code stop<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F5>', ':Lab code run<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F6>', ':Lab code panel<CR>', { noremap = true, silent = true })
