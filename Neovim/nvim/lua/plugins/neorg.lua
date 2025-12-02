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
            works = '~/Neorg/works',
          },
          default_workspace = 'notes',
        },
      },
      ['core.integrations.treesitter'] = {
        configure_parsers = true,
        install_parsers = true,
      },
    },
  },
  keys = {
    {
      '<leader>Nn',
      '<cmd>Neorg workspace notes<CR>',
      desc = 'Neorg Open Notes',
    },
    {
      '<leader>Nw',
      '<cmd>Neorg workspace works<CR>',
      desc = 'Neorg Open Works',
    },
  },
}
