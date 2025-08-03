return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2', -- IMPORTANT: select harpoon2 branch
  dependencies = { 'nvim-lua/plenary.nvim' }, -- required dependency

  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup() -- required setup

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = 'Harpoon [A]dd' })
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Harpoon Menu' })
    vim.keymap.set('n', '<leader>1', function()
      harpoon:list():select(1)
    end, { desc = 'Harpoon to 1' })
    vim.keymap.set('n', '<leader>2', function()
      harpoon:list():select(2)
    end, { desc = 'Harpoon to 2' })
    vim.keymap.set('n', '<leader>3', function()
      harpoon:list():select(3)
    end, { desc = 'Harpoon to 3' })
    vim.keymap.set('n', '<leader>4', function()
      harpoon:list():select(4)
    end, { desc = 'Harpoon to 4' })
    -- Add more mappings if needed
  end,
}
