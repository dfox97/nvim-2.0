-- Basic EditorConfig settings
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop=2
vim.opt.shiftwidth=2
vim.opt.softtabstop=2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop=2
vim.opt.shiftwidth=2
vim.opt.softtabstop=2
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.wrap = false

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.showmatch = true
vim.opt.laststatus = 2 -- always show statusline

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.colorcolumn = "120"

-- Sidebar
vim.opt.numberwidth = 3
vim.opt.showcmd = true
vim.opt.cmdheight=0


vim.opt.updatetime = 50


vim.g.mapleader = " "

-- Set the filetype for TypeScript files
vim.cmd [[
  autocmd BufNewFile,BufRead *.ts set filetype=typescript
]]

-- Set the filetype for HTML files
vim.cmd [[
  autocmd BufNewFile,BufRead *.html set filetype=html
]]

-- Set the filetype for CSS files
vim.cmd [[
  autocmd BufNewFile,BufRead *.css set filetype=css
]]

-- Set the filetype for Lua files
vim.cmd [[
  autocmd BufNewFile,BufRead *.lua set filetype=lua
]]
