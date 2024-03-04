local harpoon = require("harpoon")
harpoon:setup()

vim.keymap.set("n", "<leader>ha", function() harpoon:list():append() end)
vim.keymap.set("n", "<leader-he>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>hh", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>ht>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>hn", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>hs", function() harpoon:list():select(4) end)
