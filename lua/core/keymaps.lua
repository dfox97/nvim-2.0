vim.g.mapleader = " "

-- Alt + arrow left to jump to older cursor position (back in jump list) keep existing ctrl + o keymap
vim.api.nvim_set_keymap('n', '<A-Left>', '<C-o>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<A-Left>', '<C-o>', { noremap = true, silent = true })
-- Alt + arrow right to jump to newer cursor position (forward in jump list) keep existing ctrl + i keymap
vim.api.nvim_set_keymap('n', '<A-Right>', '<C-i>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<A-Down>', '<C-i>', { noremap = true, silent = true })

-- Define keybindings for undo and redo
vim.api.nvim_set_keymap('n', '<C-z>', ':undo<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-y>', ':redo<CR>', { noremap = true, silent = true })

-- Ignore CTRL-Z
vim.api.nvim_set_keymap('n', '<C-z>', '<NOP>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-z>', '<NOP>', { noremap = true, silent = true })

-- Split window
vim.api.nvim_set_keymap('n', '<leader>w', ':vsp<CR>', { noremap = true, silent = true })
-- Map Ctrl + h/j/k/l to switch between split windows
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- move lines up and down using alt + arrow up/down
vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-Up>', ':m .-2<CR>==', { noremap = true, silent = true }) -- learn to stop using arrow keys but keep this for now
vim.api.nvim_set_keymap('n', '<A-Down>', ':m .+1<CR>==', { noremap = true, silent = true })

-- undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

vim.keymap.set('i', '<C-e>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})
vim.g.copilot_no_tab_map = true
-- Harpoon setup in harpoon.lua
-- LSP setup in lsp.lua
-- Commentor setup in commentor.lua
