return {
  'lukas-reineke/indent-blankline.nvim',
  config = function()
    require('indent_blankline').setup({
      buftype_exclude = { 'terminal', 'nofile' },
      filetype_exclude = { 'help' },
    })
  end,
}
