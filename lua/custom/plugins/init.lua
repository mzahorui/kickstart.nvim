-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.g.user42 = 'mzahorui'
vim.g.mail42 = 'mzahorui@student.42.fr'

return {
  --   -- GUTENTAG for ctags automation
  {
    'ludovicchabant/vim-gutentags',
    config = function()
      vim.g.gutentags_file_list_command = 'rg --files'
      vim.g.gutentags_project_root = { '.git', '.root' }
      vim.g.gutentags_generate_on_new = true
      vim.g.gutentags_generate_on_missing = true
      vim.g.gutentags_generate_on_write = true
      vim.g.gutentags_generate_on_empty_buffer = false
      -- Optionally, exclude common directories
      vim.g.gutentags_ctags_exclude = { '.git', 'node_modules', '.venv', 'build', 'dist' }
      -- Optional: specify where the cache should go
      vim.g.gutentags_cache_dir = vim.fn.expand '~/.cache/nvim/tags'
    end,
  },
}
