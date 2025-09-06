return {
  {
    'Diogo-ss/42-header.nvim',
    cmd = { 'Stdheader' },
    keys = { '<F1>' },
    opts = {
      default_map = true, -- Default mapping <F1> in normal mode.
      auto_update = true, -- Update header when saving.
      user = 'mzahorui', -- Your user.
      mail = 'mzahorui@student.42.fr', -- Your mail.
      -- add other options.
    },
    config = function(_, opts)
      require('42header').setup(opts)
    end,
  },
  -- {
  --   'hardyrafael17/norminette42.nvim',
  --   config = function()
  --     local norminette = require 'norminette'
  --     norminette.setup {
  --       runOnSave = true, -- Check for errors after save
  --       maxErrorsToShow = 5, -- Limit number of errors shown
  --       active = true, -- Enable/disable plugin
  --     }
  --   end,
  -- },
  {
    'stevearc/conform.nvim',
    config = function()
      require('conform').setup {
        formatters_by_ft = {
          c = { 'c_formatter_42_pipx' },
          h = { 'c_formatter_42_pipx' },
        },
        formatters = {
          c_formatter_42_pipx = {
            -- Use the pipx virtual environment python
            command = '/home/masiyuan/.local/share/pipx/venvs/c-formatter-42/bin/python3',
            args = { '-m', 'c_formatter_42' },
            stdin = true,
          },
        },
      }

      -- Add keybinding
      vim.keymap.set('n', '<leader>f', function()
        require('conform').format { async = true, lsp_fallback = false }
      end, { desc = 'Format with c_formatter_42' })
    end,
  },
}
