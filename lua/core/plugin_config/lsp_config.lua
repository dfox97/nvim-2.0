 require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "eslint", "tsserver", 'html', 'cssls', 'stylelint_lsp', 'jsonls', 'angularls' }
}) 

local lspconfig = require('lspconfig')

local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.stdpath "config" .. "/lua"] = true,
        },
      },
    },
  }
}

lspconfig.tsserver.setup({
  settings = {
    completions = {
      completeFunctionCalls = true
    }
  },

})
lspconfig.stylelint_lsp.setup({
  filetypes = { "css", "scss" },
  settings = {
    stylelintplus = {
      autoFixOnSave = true
    }
  }
})
lspconfig.eslint.setup({
  settings = {
    linting = {
      eslint = {
        autoFixOnSave = true
      }
    }
  }
})

local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local project_library_path = vim.fn.getcwd()

local cmd = {
  "ngserver",
  "--stdio",
  "--tsProbeLocations",
  project_library_path ,
  "--ngProbeLocations",
  project_library_path
}

require('lspconfig').angularls.setup({
  cmd = cmd,
  fileTypes = { "typescript", "html", "typescriptreact", "typescript.tsx" },
  on_new_config = function (new_config, new_root_dir)
    new_config.cmd = cmd
  end
})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>.", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>fw', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
}) 
