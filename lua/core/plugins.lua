require("lazy").setup({
  -- Themes
  { 'Mofiqul/vscode.nvim', name = "vscode", priority = 1000 },
  {"ellisonleao/gruvbox.nvim"},
  {"dracula/vim"},
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "folke/tokyonight.nvim" },
  -- lsp/completion
  { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/nvim-cmp",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "rafamadriz/friendly-snippets",
  "github/copilot.vim",
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  "nvim-lualine/lualine.nvim",
  "christoomey/vim-tmux-navigator",
  { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
  { -- Additional text objects via treesitter
    "nvim-treesitter/nvim-treesitter-textobjects",
    after = "nvim-treesitter",
  },

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
  "mbbill/undotree",
  "tpope/vim-fugitive",
  "lewis6991/gitsigns.nvim",
  "tpope/vim-surround",
  "numToStr/Comment.nvim",
  'gerazov/toggle-bool.nvim',
  { 'echasnovski/mini.nvim', version = '*' },
})
