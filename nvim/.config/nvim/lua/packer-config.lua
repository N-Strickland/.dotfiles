-- load plugins & configs
return require('packer').startup(function(use)

  use('wbthomason/packer.nvim')
  use(require('plugins.nvim-web-devicons'))
  use(require('plugins.autopairs'))
  -- use(require('plugins.material')) 
  use(require('plugins.bufdelete'))
  use(require('plugins.embark-theme'))
  use(require('plugins.lualine')) 
  use(require('plugins.bufferline'))
  use(require('plugins.colorizer'))
  use(require('plugins.fugitive'))
  use(require('plugins.gitsigns'))
  use(require('plugins.indent-blankline'))
  use(require('plugins.nvim-tree'))
  use(require('plugins.nvim-treesitter'))   
  use(require('plugins.lsp-cmp'))
  use(require('plugins.telescope'))
  use(require('plugins.comment'))
  use(require('plugins.hop'))
  use(require('plugins.formatter'))
  use(require('plugins.trouble'))
  use(require('plugins.vim-test'))
  use(require('plugins.toggleterm'))
  use(require('plugins.autotag'))

end)

