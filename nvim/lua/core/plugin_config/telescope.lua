require('telescope').setup({ file_ignore_patterns = { "node%_modules/.*" } })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>pf', builtin.git_files, {})
vim.keymap.set('n', '<C-f>', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ps', function()
  vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
