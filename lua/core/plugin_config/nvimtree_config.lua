require("nvim-tree").setup({
  sort_by = "case_sensitive",
  git = {
    enable = true,
  },
  view = {
    width = 40,
  },
  renderer = {
    group_empty = true,
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
  actions = {
    change_dir = {
      enable = true,
    },
    open_file = {
      quit_on_open = true,
    },
  },
})

-- nvim-tree
vim.keymap.set("n", "<leader>t", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>o", vim.cmd.NvimTreeFindFile)
vim.keymap.set("n", "<leader>tc", vim.cmd.NvimTreeCollapse)
vim.keymap.set("n", "<leader>ti", ":NvimTreeResize +10<cr>")
vim.keymap.set("n", "<leader>td", ":NvimTreeResize -10<cr>")
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFile<CR>')
