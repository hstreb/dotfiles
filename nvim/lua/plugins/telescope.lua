local config = function()
  local telescope = require 'telescope'
  telescope.setup {
    defaults = {
      file_ignore_patterns = { '.git/' },
      mappings = {
        i = {
          ['<C-j>'] = 'move_selection_next',
          ['<C-k>'] = 'move_selection_previous',
        },
      },
    },
    pickers = {
      find_files = {
        file_ignore_patterns = { 'node_modules', '.git', '.venv', 'build', '*.jar', '*.db' },
        hidden = true,
      },
    },
  }
  local builtin = require 'telescope.builtin'
  vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
  vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind Live [G]rep' })
  vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = 'Find buffers' })
  vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind [H]elp tags' })
  vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = '[F]ind [K]eymaps' })
  vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = '[F]ind [O]ldfiles' })
end

return {
  'nvim-telescope/telescope.nvim',
  event = 'VeryLazy',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      -- NOTE: If you are having trouble with this installation,
      --       refer to the README for telescope-fzf-native for more instructions.
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
  },
  config = config,
  keys = {},
}
