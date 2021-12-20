vim.g.nvim_tree_disable_window_picker = 1
 
return {
  'kyazdani42/nvim-tree.lua',
  config = function()
    require('nvim-tree').setup()
  end,
}
