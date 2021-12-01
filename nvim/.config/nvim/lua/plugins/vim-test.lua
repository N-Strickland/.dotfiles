return {
  'vim-test/vim-test',
  config = function()
    vim.g['test#strategy'] = 'kitty'
  end
}
