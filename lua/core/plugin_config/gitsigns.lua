require('gitsigns').setup({
   on_attach = function(bufnr)
    local function map(mode, lhs, rhs, opts)
        opts = vim.tbl_extend('force', {noremap = true, silent = true}, opts or {})
        vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
    end

    -- Navigation
    map('n', ']c', "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", {expr=true, desc="Next Hunk"})
    map('n', '[c', "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", {expr=true, desc="Prev Hunk"})

    -- Actions
    map('n', '<leader>hs', ':Gitsigns stage_hunk<CR>', {desc="Stage Hunk"})
    map('n', '<leader>hr', ':Gitsigns reset_hunk<CR>', {desc="Reset Hunk"})
    map('n', '<leader>hS', '<cmd>Gitsigns stage_buffer<CR>', {desc="Stage buffer"} )
    map('n', '<leader>hu', '<cmd>Gitsigns undo_stage_hunk<CR>', {desc="Undo stage hunk"} )
    map('n', '<leader>hR', '<cmd>Gitsigns reset_buffer<CR>',{desc="reset buffer"} )
    map('n', '<leader>hp', '<cmd>Gitsigns preview_hunk<CR>',{desc="preview hunk"} )
    map('n', '<leader>gb', '<cmd>Gitsigns toggle_current_line_blame<CR>', {desc="Toggle Blame"})
    map('n', '<leader>hd', '<cmd>Gitsigns diffthis<CR>', {desc="Diff this"} )
    map('n', '<leader>td', '<cmd>Gitsigns toggle_deleted<CR>', {desc="Toggle Deleted"})
    map('n', '<leader>hD', '<cmd>lua require"gitsigns".diffthis("~")<CR>', {desc="Diff this (cached)"})
    map('n', '<leader>hv', '<cmd>Gitsigns select_hunk<CR>', {desc="Select Hunk"})
  end
})
