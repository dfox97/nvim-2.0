local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>ha", function() harpoon:list():append() end)
vim.keymap.set("n", "<leader>he", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)


vim.keymap.set("n", "<leader>hh", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>hb>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>hn", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>hm", function() harpoon:list():select(4) end)

