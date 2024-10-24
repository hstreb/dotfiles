local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require 'config.globals'
require 'config.options'
require 'config.keymaps'

local plugins = 'plugins'

local opts = {
  defaults = {
    lazy = true,
  },
  install = {},
  rtp = {
    disabled_plugins = {
      'gzip',
      'matchit',
      'matchparen',
      'tarPlugin',
      'zipPlugin',
    },
  },
  change_detection = {
    notify = false,
  },
}

require('lazy').setup(plugins, opts)
