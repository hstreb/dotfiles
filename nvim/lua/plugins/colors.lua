return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = false,
    priority = 999,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 999,
    config = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 999,
  },
  {
    'EdenEast/nightfox.nvim',
    lazy = false,
    priority = 999,
  },
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 999,
  },
  {
    'sho-87/kanagawa-paper.nvim',
    lazy = false,
    priority = 999,
    opts = {},
  },
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 999,
    opts = {},
  },
  {
    'ramojus/mellifluous.nvim',
    lazy = false,
    priority = 999,
  },
  {
    'killitar/obscure.nvim',
    lazy = false,
    priority = 999,
    opts = {},
  },
  {
    'mhartington/oceanic-next',
    lazy = false,
    priority = 999,
  },
}
