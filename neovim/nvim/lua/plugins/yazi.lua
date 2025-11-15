return {
  'mikavilpas/yazi.nvim',
  version = '*',
  event = 'VeryLazy',
  dependencies = {
    { 'nvim-lua/plenary.nvim', lazy = true },
  },
  keys = {
    {
      '<leader>fm',
      mode = { 'n', 'v' },
      '<cmd>Yazi<cr>',
      desc = 'File Manager (Yazi)',
    },
  },
  opts = {
    keymaps = {
      show_help = '<f1>',
    },
  },
}
