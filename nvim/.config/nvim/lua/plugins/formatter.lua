return {
  'mhartington/formatter.nvim',
  config = function()
    local function prettier()
      return {
        exe = 'prettier',
        args = {
          '--config-precedence',
          'prefer-file',
          '--single-quote',
          '--prose-wrap',
          'always',
          '--arrow-parens',
          'avoid',
          '--trailing-comma',
          'all',
          '--stdin-filepath',
          vim.fn.shellescape(vim.api.nvim_buf_get_name(0)),
        },
        stdin = true,
      }
    end

    require('formatter').setup({
      logging = true,
        filetype = {
          javascript = { prettier },
          javascriptreact = { prettier },
          typescript = { prettier },
          typescriptreact = { prettier },
          css = { prettier },
          json = { prettier },
          graphql = { prettier },
          markdown = { prettier },
          yaml = { prettier },
          html = { prettier },
        },
    })

    vim.api.nvim_exec([[
      augroup FormatAutogroup
        autocmd!
        autocmd BufWritePost *.js,*.ts FormatWrite
      augroup END
    ]], true)

  end
}
