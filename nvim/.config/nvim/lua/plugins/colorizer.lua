return {
  'norcalli/nvim-colorizer.lua',
  config = function()
    require('colorizer').setup()
    vim.cmd [[ packadd nvim-colorizer.lua ]]
  end,
}
