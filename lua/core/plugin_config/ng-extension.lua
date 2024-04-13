require('nx').setup({
    opts  = {
      -- See below for config options
      nx_cmd_root = "npx nx",
    },
})

vim.api.nvim_set_keymap('n', '<leader>nx', '<cmd>Telescope nx actions<CR>', { noremap = true, silent = true, desc="nx actions" })
