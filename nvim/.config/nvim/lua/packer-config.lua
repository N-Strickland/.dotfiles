-- load plugins & configs
return require('packer').startup(function(use)

  use('wbthomason/packer.nvim')
  use(require('plugins.nvim-web-devicons'))
  use(require('plugins.gruvbox'))
  use(require('plugins.autopairs'))
  use(require('plugins.bufdelete'))
  use(require('plugins.lualine')) 
  use(require('plugins.bufferline'))
  use(require('plugins.colorizer'))
  use(require('plugins.lazygit'))
  use(require('plugins.gitsigns'))
  use(require('plugins.nvim-tree'))
  use(require('plugins.nvim-treesitter'))   
  use(require('plugins.lsp-cmp'))
  use(require('plugins.telescope'))
  use(require('plugins.comment'))
  use(require('plugins.hop'))
  use(require('plugins.formatter'))
  use(require('plugins.toggleterm'))
  use(require('plugins.autotag'))
  use(require('plugins.fugitive'))

end)

