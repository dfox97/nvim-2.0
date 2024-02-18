require("nvim-tree").setup({
  sort_by = "case_sensitive",
  git = {
    enable = true,
  },
  view = {
    width = 30,
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
  --[[ filters = { ]]
    --[[ dotfiles = true, ]]
  --[[ }, ]]
})

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFile<CR>')
