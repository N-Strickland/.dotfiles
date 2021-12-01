return {
  'nvim-telescope/telescope.nvim',
  requires = { 
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
  },
  config = function()
    local telescope = require('telescope')
    telescope.setup({
      defaults = {
        layout_config = {
          horizontal = {
            preview_width = 80,
            preview_cutoff = 50
          }
        },
      },
      pickers = {
        find_files = {
          hidden = true
        },
        grep_string = {
          hidden = true
        },
      }    
    })
    telescope.load_extension('fzf') 
  end,
}
