vim.g.nvim_tree_quit_on_open = 1

return {
  'kyazdani42/nvim-tree.lua',
  config = function()
    require('nvim-tree').setup()
  end,
}
