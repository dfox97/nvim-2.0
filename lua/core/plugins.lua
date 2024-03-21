require("lazy").setup({
  -- Themes
  { 'Mofiqul/vscode.nvim', name = "vscode", priority = 1000 },
  --[[ { "catppuccin/nvim", name = "catppuccin", priority = 1000 }, ]]
  "ellisonleao/gruvbox.nvim",
  "dracula/vim",
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  -- lsp/completion
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/nvim-cmp",
  "L3MON4D3/LuaSnip",

  "saadparwaiz1/cmp_luasnip",
  "rafamadriz/friendly-snippets",
   "github/copilot.vim",
  -- File explorer / status line
  {"0x100101/lab.nvim", run = 'cd js && npm ci', dependencies = { 'nvim-lua/plenary.nvim' } },
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  "nvim-lualine/lualine.nvim",
  "lewis6991/gitsigns.nvim",
  "christoomey/vim-tmux-navigator",
  {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"},
  --[[ { "elgiano/nvim-treesitter-angular", branch = "topic/jsx-fix" }, ]]
  --[[ "nvim-treesitter/playground", ]]
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
  -- Blamer gives git commit info on each line of code - same as git lense
  'APZelos/blamer.nvim',
  "tpope/vim-fugitive",
  "tpope/vim-surround",
  
  -- for easily changing a line to comment
  {
    'numToStr/Comment.nvim',
  },
  --   opts = {
  --     toggler = {
  --       ---Line-comment toggle keymap
  --       line = 'gcc',
  --       ---Block-comment toggle keymap
  --       block = "<C-_>",
  --     },
  --     opleader = {
  --       ---Line-comment operator keymap
  --       line = 'gc',
  --       ---Block-comment operator keymap
  --       block = '<C-_>',
  --     },
  --   },
  --   lazy = false,
  -- },
  --Toggle boolean value
  'gerazov/toggle-bool.nvim',
  { 'echasnovski/mini.nvim', version = '*' },

  -- Lazy
  {
    'dgagn/diagflow.nvim',
    event = 'LspAttach', --This is what I use personnally and it works great
  }

--Move into seperate files later
 --[[ {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.erb_lint,
				null_ls.builtins.diagnostics.eslint_d,
				null_ls.builtins.diagnostics.rubocop,
				null_ls.builtins.formatting.rubocop,
			},
		})

		vim.keymap.set("n", "<leader>nf", vim.lsp.buf.format, {})
	end,
} ]]
})
