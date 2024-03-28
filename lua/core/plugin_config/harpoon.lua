local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>ha", function() harpoon:list():append() end, { desc = "Add [A]ppend" })
vim.keymap.set("n", "<leader>he", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Toggle [E]xplore" })


vim.keymap.set("n", "<leader>hh", function() harpoon:list():select(1) end, { desc = "Select [H]arpoon 1" })
vim.keymap.set("n", "<leader>hb>", function() harpoon:list():select(2) end, { desc = "Select [H]arpoon 2" })
vim.keymap.set("n", "<leader>hn", function() harpoon:list():select(3) end, { desc = "Select [H]arpoon 3" })
vim.keymap.set("n", "<leader>hm", function() harpoon:list():select(4) end, { desc = "Select [H]arpoon 4" })

