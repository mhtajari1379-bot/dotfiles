return {
  'folke/zen-mode.nvim',
  opts = {
    window = {
      width = 0.60,
      backdrop = 0.95,
    },
  },
  keys = {
    {
      '<leader>z',
      '<cmd>ZenMode<CR>',
      desc = 'Toggle Zen Mode',
    },
  },
}
