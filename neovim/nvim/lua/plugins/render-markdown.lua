return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {
    code = {
      sign = false,
    },
    heading = {
      sign = false,
      icons = {},
    },
    checkbox = {
      enabled = true,
    },
  },
}
