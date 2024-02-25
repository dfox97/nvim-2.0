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

-- Open temporary terminal in split using Ctrl + ;
local is_terminal_open = false

function ToggleTerminal()
    if is_terminal_open then
        vim.cmd('q!')
    else
        vim.cmd(':below 9sp | terminal')
    end
    is_terminal_open = not is_terminal_open
end

-- Map leader+; to toggle the small (9 lines) horizontal terminal at the bottom
vim.api.nvim_set_keymap('n', '<leader>;', [[:lua ToggleTerminal()<CR>]], { noremap = true, silent = true })
--[[ vim.api.nvim_set_keymap('n', '<leader>;', ':below 9sp | terminal<CR>', { noremap = true, silent = true }) ]]

-- Split window
vim.api.nvim_set_keymap('n', '<leader>w', ':vsp<CR>', { noremap = true, silent = true })
-- Map Ctrl + h/j/k/l to switch between split windows
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })


-- move lines up and down using alt + arrow up/down
vim.api.nvim_set_keymap('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-Up>', ':m .-2<CR>==', { noremap = true, silent = true }) -- learn to stop using arrow keys but keep this for now
vim.api.nvim_set_keymap('n', '<A-Down>', ':m .+1<CR>==', { noremap = true, silent = true })

-- Blockwise commenting/uncommenting
--[[ vim.api.nvim_set_keymap('n', '<C-b>', "<Plug>CommentBlock", { noremap = true, silent = true }) ]]


-- nvim-tree
vim.keymap.set("n", "<leader>t", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>o", vim.cmd.NvimTreeFindFile)
vim.keymap.set("n", "<leader>tc", vim.cmd.NvimTreeCollapse)
vim.keymap.set("n", "<leader>ti", ":NvimTreeResize +10<cr>")
vim.keymap.set("n", "<leader>td", ":NvimTreeResize -10<cr>")vim.api.nvim_set_keymap('x', '<C-b>', "<Plug>CommentBlock", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)


-- Encapsulate word in quotes, brackets, etc.
function Surround(w_or_W)
    local open_char = vim.fn.input("Surround with: ")
    local closed_char = nil
    if open_char == "(" then closed_char = ")" end
    if open_char == "[" then closed_char = "]" end
    if open_char == "{" then closed_char = "}" end
    if open_char == "<" then closed_char = ">" end
    if open_char == "'" then closed_char = "'" end
    if open_char == '"' then closed_char = '"' end
    if open_char == "`" then closed_char = "`" end
    if open_char == "/" then closed_char = "/" end
    if open_char == "|" then closed_char = "|" end

    if w_or_W == "w" then
        vim.cmd("normal! ciw" .. open_char)
    elseif w_or_W == "W" then
        vim.cmd([[normal! ciW]] .. open_char)
    end
    vim.cmd("normal! p")
    vim.cmd("normal! a" .. closed_char)
    vim.cmd("normal! a")
end

vim.api.nvim_set_keymap("n", "<leader>sw", ":lua Surround('w')<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>sW", ":lua Surround('W')<CR>", { noremap = true, silent = true })


-- undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)


-- Harpoon setup in harpoon.lua
-- LSP setup in lsp.lua
-- Commentor setup in commentor.lua
