return {
  "numToStr/Comment.nvim",
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
}
