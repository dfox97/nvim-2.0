require("lazy").setup({
  -- Themes
  { 'Mofiqul/vscode.nvim', name = "vscode", priority = 1000 },
  --[[ { "catppuccin/nvim", name = "catppuccin", priority = 1000 }, ]]
  "ellisonleao/gruvbox.nvim",
  "dracula/vim",

  -- lsp/completion
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "rafamadriz/friendly-snippets",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",

  "github/copilot.vim",

  -- File explorer / status line
  {"0x100101/lab.nvim", run = 'cd js && npm ci', dependencies = { 'nvim-lua/plenary.nvim' } },
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  "nvim-lualine/lualine.nvim",
  "lewis6991/gitsigns.nvim",
  "christoomey/vim-tmux-navigator",
  "nvim-treesitter/nvim-treesitter",
  "nvim-treesitter/nvim-treesitter-angular",
  { "elgiano/nvim-treesitter-angular", branch = "topic/jsx-fix" },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.4",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  -- Blamer gives git commit info on each line of code - same as git lense
  'APZelos/blamer.nvim',
  "tpope/vim-fugitive",
  "tpope/vim-surround",

  -- General plugins similar to some vs code behavior
  "tpope/vim-commentary",
  "mattn/emmet-vim",
  -- for easily changing a line to comment
  {
    'numToStr/Comment.nvim',
    opts = {
      toggler = {
        ---Line-comment toggle keymap
        line = 'gcc',
        ---Block-comment toggle keymap
        block = "<C-_>",
      },
      opleader = {
        ---Line-comment operator keymap
        line = 'gc',
        ---Block-comment operator keymap
        block = '<C-_>',
      },
    },
    lazy = false,
  },
  --Toggle boolean value
  'gerazov/toggle-bool.nvim',
  -- console log sitter
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
  },
})
