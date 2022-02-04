return {
  'sainnhe/gruvbox-material',
  config = function() 
    vim.g.gruvbox_material_palette = 'original'
    vim.g.gruvbox_material_statusline_style = 'original'
    vim.cmd('colorscheme gruvbox-material')
  end,
}
