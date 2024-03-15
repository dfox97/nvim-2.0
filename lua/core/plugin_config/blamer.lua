-- Enables / disables blamer in insert modes.
vim.g.blamer_enabled = 1

-- create a keymap to toggle blamer
vim.api.nvim_set_keymap('n', '<leader>gb', ':BlamerToggle<CR>', { noremap = true, silent = true })

vim.g.blamer_show_in_insert_modes = 0 -- Hide showing in insert mode

vim.cmd('highlight Blamer guifg=lightgrey')
