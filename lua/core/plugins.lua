require("lazy").setup({
  -- Themes
  { 'Mofiqul/vscode.nvim', name = "vscode", priority = 1000 },
  -- lsp/completion
  { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
  { "williamboman/mason.nvim", dependencies = {"williamboman/mason-lspconfig.nvim"} },
  "neovim/nvim-lspconfig",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/nvim-cmp",
  { 'nvimtools/none-ls.nvim' },
  -- Big improvement to typescript lsp
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets", "saadparwaiz1/cmp_luasnip" },
  },
  "github/copilot.vim",
  {
    "nvim-tree/nvim-tree.lua",
     dependencies = { "kyazdani42/nvim-web-devicons" },
  },
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
    "Equilibris/nx.nvim",
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
  },
  "mbbill/undotree",
  "tpope/vim-fugitive",
  "lewis6991/gitsigns.nvim",
  "tpope/vim-surround",
  "numToStr/Comment.nvim",
  'gerazov/toggle-bool.nvim',
  { 'echasnovski/mini.nvim', version = '*' },
})
