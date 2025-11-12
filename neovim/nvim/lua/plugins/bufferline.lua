return {
  'akinsho/bufferline.nvim',
  version = '*',
  lazy = false,
  dependencies = {
    'catppuccin/nvim',
    'nvim-tree/nvim-web-devicons',
  },
  opts = function()
    return {
      highlights = require('catppuccin.special.bufferline').get_theme(),
    }
  end,
  keys = {
    { '<Tab>', '<cmd>BufferLineCycleNext<cr>', desc = 'Next Buffer' },
    { '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', desc = 'Prev Buffer' },
  },
}
