return {
  {
    'mbbill/undotree',
    keys = { { '<leader>uu', '<cmd>UndotreeToggle<cr>', desc = 'Toggle undotree' } },
    init = function()
      -- Optional: change the undotree window layout, see doc for more
      vim.g.undotree_WindowLayout = 4
    end,
  },
}
