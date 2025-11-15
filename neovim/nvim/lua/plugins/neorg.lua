return {
  'nvim-neorg/neorg',
  lazy = false,
  version = '*',
  dependencies = {
    'vhyrro/luarocks.nvim',
    'nvim-tree/nvim-web-devicons',
    'nvim-treesitter/nvim-treesitter',
  },
  opts = {
    load = {
      ['core.defaults'] = {},
      ['core.concealer'] = {},
      ['core.dirman'] = {
        config = {
          workspaces = {
            notes = '~/Neorg/notes',
          },
          default_workspace = 'notes',
        },
      },
    },
  },
  keys = {
    {
      '<leader>on',
      '<cmd>Neorg workspace notes<CR>',
      desc = 'Neorg Open Notes',
    },
  },
}
