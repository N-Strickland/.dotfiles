
return {
  'neovim/nvim-lspconfig',
  requires = { 
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'onsails/lspkind-nvim'
  },
  config = function()
    local nvim_lsp = require('lspconfig')
    local cmp_capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())  
    local cmp = require('cmp')
    local lspkind = require('lspkind')
    local luasnip = require('luasnip')

    vim.diagnostic.config({
      virtual_text = false,
      signs = true,
      underline = true,
      update_in_insert = false,
      severity_sort = true,
      float = {
        source = 'always'
      }
    })

    local signs = { Error = "", Warning = "", Hint = "", Information = "" }
    for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end


    vim.o.updatetime = 250
    vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})]]
    vim.cmd [[
      highlight DiagnosticLineNrError guibg=#51202A guifg=#FF0000 gui=bold
      highlight DiagnosticLineNrWarn guibg=#51412A guifg=#FFA500 gui=bold
      highlight DiagnosticLineNrInfo guibg=#1E535D guifg=#00FFFF gui=bold
      highlight DiagnosticLineNrHint guibg=#1E205D guifg=#0000FF gui=bold

      sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=DiagnosticLineNrError
      sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn linehl= numhl=DiagnosticLineNrWarn
      sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo linehl= numhl=DiagnosticLineNrInfo
      sign define DiagnosticSignHint text= texthl=DiagnosticSignHint linehl= numhl=DiagnosticLineNrHint
    ]]
     
    local function goto_definition(split_cmd)
      local util = vim.lsp.util
      local log = require("vim.lsp.log")
      local api = vim.api

      -- note, this handler style is for neovim 0.5.1/0.6, if on 0.5, call with function(_, method, result)
      local handler = function(_, result, ctx)
        if result == nil or vim.tbl_isempty(result) then
          local _ = log.info() and log.info(ctx.method, "No location found")
          return nil
        end

        if split_cmd then
          vim.cmd(split_cmd)
        end

        if vim.tbl_islist(result) then
          util.jump_to_location(result[1])

          if #result > 1 then
            util.set_qflist(util.locations_to_items(result))
            api.nvim_command("copen")
            api.nvim_command("wincmd p")
          end
        else
          util.jump_to_location(result)
        end
      end

      return handler
    end

    vim.lsp.handlers["textDocument/implementation"] = goto_definition('vsplit')
    -- Capture real implementation of function that sets signs
    local orig_set_signs = vim.diagnostic.set_signs
    local set_signs_limited = function(diagnostics, bufnr, client_id, sign_ns, opts)

      -- original func runs some checks, which I think is worth doing
      -- but maybe overkill
      if not diagnostics then
        diagnostics = diagnostic_cache[bufnr][client_id]
      end

      -- early escape
      if not diagnostics then
        return
      end

      -- Work out max severity diagnostic per line
      local max_severity_per_line = {}
      for _,d in pairs(diagnostics) do
        if max_severity_per_line[d.range.start.line] then
          local current_d = max_severity_per_line[d.range.start.line]
          if d.severity < current_d.severity then
            max_severity_per_line[d.range.start.line] = d
          end
        else
          max_severity_per_line[d.range.start.line] = d
        end
      end

      -- map to list
      local filtered_diagnostics = {}
      for i,v in pairs(max_severity_per_line) do
        table.insert(filtered_diagnostics, v)
      end

      -- call original function
      orig_set_signs(filtered_diagnostics, bufnr, client_id, sign_ns, opts)
    end

    vim.diagnostic.set_signs = set_signs_limited

    cmp.setup({
      completion = {
        completeopt = 'menu,menuone,noinsert'
      },
      formatting = {
        format = lspkind.cmp_format({
          with_text = true,
          menu = ({
            buffer = '[Buffer]',
            nvim_lsp = '[LSP]',
            luasnip = '[LuaSnip]',
            path = '[Path]',
            cmdline = '[CMD]'
          })
        })
      },
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end
      },
      mapping = {
        ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        ['<C-e>'] = cmp.mapping({
          i = cmp.mapping.abort(),
          c = cmp.mapping.close(),
        }),
        ['<CR>'] = cmp.mapping.confirm({ 
          select = true,
          behaviour = cmp.ConfirmBehavior.Replace
        }),
        ['<Tab>'] = function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
          else
            fallback()
          end
        end,
        ['<S-Tab>'] = function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
          else
            fallback()
          end
        end,
      },
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
      }, {
        { name = 'buffer' },
      })
    })

    -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline('/', {
      sources = {
        { name = 'buffer' }
      }
    })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        { name = 'cmdline' }
      })
    })
    
    local on_attach = function(client, bufnr)
      local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
      local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

      -- Enable completion triggered by <c-x><c-o>
      buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

      -- Mappings.
      local opts = { noremap=true, silent=true }

      -- See `:help vim.lsp.*` for documentation on any of the below functions
      buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
      buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
      buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
      buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
      buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
      buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
      buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
      buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
      buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
      buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
      buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
      buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
      buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
      buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
      buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
      buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
      buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

    end

    local servers = { 'tsserver', 'graphql', 'prismals' }
    for _, lsp in ipairs(servers) do
      nvim_lsp[lsp].setup {
        on_attach = on_attach,
        capabilities = cmp_capabilities,
        flags = {
          debounce_text_changes = 150,
        }
      }
    end
    -- diagnostic settings
    nvim_lsp.diagnosticls.setup({
      on_attach = on_attach,
      filetypes = {
        'javascript',
        'javascriptreact',
        'typescript',
        'typescriptreact'
      },
      init_options = {
        filetypes = {
          javascript = 'eslint',
          typescript = 'eslint',
          javascriptreact = 'eslint',
          typescriptreact = 'eslint'
        },
        linters = {
          eslint = {
            sourceName = 'eslint',
            command = 'eslint_d',
            rootPatterns = {
              '.git',
              '.eslintrc.js',
              '.package.json'
            },
            debounce = 500,
            args = {
              '--cache',
              '--stdin',
              '--stdin-filename',
              '%filepath',
              '--format',
              'json'
            },
            parseJson = {
              errorsRoot = '[0].message',
              line = 'line',
              column = 'column',
              endLine = 'endLine',
              endColumn = 'endColumn',
              message = '${message} [${ruleId}]',
              security = 'severity'
            },
            securities = {
              ['2'] = 'error',
              ['1'] = 'warning'
            },
          },
        },
      },
    })
  end,
}
