return {
  'akinsho/bufferline.nvim',
  config = function()
    require('bufferline').setup({
      options = {
        show_buffer_close_icons = false,
        show_close_icon = false,
        enforce_regular_tabs = true,
        diagnostics = "nvim_lsp", 
        offsets = {
          {
            filetype = 'NvimTree',
          },
        },
      },
    })
  end,
}
