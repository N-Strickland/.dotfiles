return {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = {
        'comment',
        'css',
        'dockerfile',
        'graphql',
        'html',
        'http',
        'javascript',
        'jsdoc',
        'json',
        'lua',
        'python',
        'tsx',
        'typescript',
        'yaml',
        'prisma',
        'python',
        'go'
      },
      highlight = { enable = true },
      indent = { enable = true }
    })
  end,
}
