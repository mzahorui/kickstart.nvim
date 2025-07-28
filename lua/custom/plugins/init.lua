-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.g.user42 = 'mzahorui'
vim.g.mail42 = 'mzahorui@student.42.fr'

return {
  -- Function Line Counter Plugin
  {
    'TuTaRdrgZ/ft_count_lines.nvim',
    config = function()
      require('ft_count_lines').setup {
        enable_on_start = false,
        -- You can add custom config here if needed
      }
    end,
  },

  {
    'MoulatiMehdi/42norm.nvim',
    config = function()
      local norm = require '42norm'

      norm.setup {
        header_on_save = true,
        format_on_save = true,
        liner_on_change = true,
      }

      -- Press "F5" key to run the norminette
      vim.keymap.set('n', '<F5>', function()
        norm.check_norms()
      end, { desc = 'Update 42norms diagnostics', noremap = true, silent = true })

      vim.keymap.set('n', '<C-f>', function()
        norm.format()
      end, { desc = 'Format buffer on 42norms', noremap = true, silent = true })

      vim.keymap.set('n', '<F1>', function()
        norm.stdheader()
      end, { desc = 'Insert 42header', noremap = true, silent = true })
    end,
  },
}
