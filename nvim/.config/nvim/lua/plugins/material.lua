return {
  'marko-cerovac/material.nvim',
  config = function()
    local colors = require('material/colors')
    vim.g.material_style = 'deep ocean'
    vim.cmd('colorscheme material')
    require('material').setup({
      italics = {
        comments = true,
      },
      popup_menu = 'light',
      contrast_windows = {},
      disable = {
        term_colors = false,
      },
      contrast = true,
    })
  end,
}
