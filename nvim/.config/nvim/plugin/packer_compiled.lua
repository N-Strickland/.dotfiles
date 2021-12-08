-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/nathanstrickland/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/nathanstrickland/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/nathanstrickland/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/nathanstrickland/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/nathanstrickland/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n¿\1\0\0\6\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0004\4\3\0005\5\4\0>\5\1\4=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\1\rfiletype\rNvimTree\1\0\3\28show_buffer_close_icons\1\25enforce_regular_tabs\2\20show_close_icon\1\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\nŒ\2\0\0\a\0\b\1\0145\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\0026\4\2\0009\4\5\0049\4\6\4)\6\0\0B\4\2\0A\2\0\0?\2\0\0=\1\a\0L\0\2\0\targs\22nvim_buf_get_name\bapi\16shellescape\afn\bvim\1\v\0\0\24--config-precedence\16prefer-file\19--single-quote\17--prose-wrap\valways\19--arrow-parens\navoid\21--trailing-comma\ball\21--stdin-filepath\1\0\2\bexe\rprettier\nstdin\2\23€€À™\4Õ\3\1\0\6\0\21\0.3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0005\4\5\0004\5\3\0>\0\1\5=\5\6\0044\5\3\0>\0\1\5=\5\a\0044\5\3\0>\0\1\5=\5\b\0044\5\3\0>\0\1\5=\5\t\0044\5\3\0>\0\1\5=\5\n\0044\5\3\0>\0\1\5=\5\v\0044\5\3\0>\0\1\5=\5\f\0044\5\3\0>\0\1\5=\5\r\0044\5\3\0>\0\1\5=\5\14\0044\5\3\0>\0\1\5=\5\15\4=\4\16\3B\1\2\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0+\4\2\0B\1\3\1K\0\1\0}      augroup FormatAutogroup\n        autocmd!\n        autocmd BufWritePost *.js,*.ts FormatWrite\n      augroup END\n    \14nvim_exec\bapi\bvim\rfiletype\thtml\tyaml\rmarkdown\fgraphql\tjson\bcss\20typescriptreact\15typescript\20javascriptreact\15javascript\1\0\0\1\0\1\flogging\2\nsetup\14formatter\frequire\0\0" },
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n“\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\21filetype_exclude\1\2\0\0\thelp\20buftype_exclude\1\0\0\1\3\0\0\rterminal\vnofile\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nÂ\5\0\0\a\0#\00036\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\t\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0034\4\0\0=\4\b\3=\3\n\0025\3\f\0005\4\v\0=\4\r\0035\4\14\0005\5\15\0005\6\16\0=\6\17\5>\5\3\4=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\3=\3\27\0025\3\28\0004\4\0\0=\4\r\0034\4\0\0=\4\18\0035\4\29\0=\4\20\0035\4\30\0=\4\22\0034\4\0\0=\4\24\0034\4\0\0=\4\26\3=\3\31\0024\3\0\0=\3 \0025\3!\0=\3\"\2B\0\2\1K\0\1\0\15extensions\1\3\0\0\rfugitive\14nvim-tree\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\fsources\1\3\0\0\rnvim_lsp\bcoc\1\2\0\0\16diagnostics\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\tleft\bî‚°\nright\bî‚²\25component_separators\1\0\2\tleft\bî‚±\nright\bî‚³\1\0\3\18icons_enabled\2\25always_divide_middle\2\ntheme\18material-nvim\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["material.nvim"] = {
    config = { "\27LJ\2\nÊ\1\0\0\5\0\n\0\0166\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\5\0005\4\4\0=\4\6\0034\4\0\0=\4\a\0035\4\b\0=\4\t\3B\1\2\1K\0\1\0\fdisable\1\0\1\16term_colors\1\21contrast_windows\fitalics\1\0\2\rcontrast\2\15popup_menu\nlight\1\0\1\rcomments\2\nsetup\rmaterial\20material/colors\frequire\0" },
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n¯\2\0\5\16\1\b\0:\14\0\0\0X\5\3€6\5\0\0008\5\1\0058\0\2\5\14\0\0\0X\5\1€K\0\1\0004\5\0\0006\6\1\0\18\b\0\0B\6\2\4H\t\23€9\v\2\n9\v\3\v9\v\4\v8\v\v\5\15\0\v\0X\f\r€9\v\2\n9\v\3\v9\v\4\v8\v\v\0059\f\5\n9\r\5\v\1\f\r\0X\f\t€9\f\2\n9\f\3\f9\f\4\f<\n\f\5X\v\4€9\v\2\n9\v\3\v9\v\4\v<\n\v\5F\t\3\3R\tç4\6\0\0006\a\1\0\18\t\5\0B\a\2\4H\n\5€6\f\6\0009\f\a\f\18\14\6\0\18\15\v\0B\f\3\1F\n\3\3R\nù-\a\0\0\18\t\6\0\18\n\1\0\18\v\2\0\18\f\3\0\18\r\4\0B\a\6\1K\0\1\0\6À\vinsert\ntable\rseverity\tline\nstart\nrange\npairs\21diagnostic_cache-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\4À\tbody\15lsp_expandü\1\0\1\t\2\n\0\31-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\21€-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\14€6\1\3\0009\1\4\0019\1\5\0016\3\3\0009\3\6\0039\3\a\3'\5\b\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2'\4\t\0B\1\3\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\2À\4À\5!<Plug>luasnip-expand-or-jump\27nvim_replace_termcodes\bapi\rfeedkeys\afn\bvim\23expand_or_jumpable\21select_next_item\fvisibleñ\1\0\1\t\2\n\0 -\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\22€-\1\1\0009\1\2\1)\3ÿÿB\1\2\2\15\0\1\0X\2\14€6\1\3\0009\1\4\0019\1\5\0016\3\3\0009\3\6\0039\3\a\3'\5\b\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2'\4\t\0B\1\3\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\2À\4À\5\28<Plug>luasnip-jump-prev\27nvim_replace_termcodes\bapi\rfeedkeys\afn\bvim\rjumpable\21select_prev_item\fvisibleA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1À\24nvim_buf_set_keymap\bapi\bvimA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1À\24nvim_buf_set_option\bapi\bvimÔ\n\1\2\v\0(\0o3\2\0\0003\3\1\0\18\4\3\0'\6\2\0'\a\3\0B\4\3\0015\4\4\0\18\5\2\0'\a\5\0'\b\6\0'\t\a\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\b\0'\t\t\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\n\0'\t\v\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\f\0'\t\r\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\14\0'\t\15\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\16\0'\t\17\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\18\0'\t\19\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\20\0'\t\21\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\22\0'\t\23\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\24\0'\t\25\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\26\0'\t\27\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\28\0'\t\29\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\30\0'\t\31\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b \0'\t!\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\"\0'\t#\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b$\0'\t%\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b&\0'\t'\0\18\n\4\0B\5\5\0012\0\0€K\0\1\0*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\r<space>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\r<space>e*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\fnoremap\2\vsilent\2\27v:lua.vim.lsp.omnifunc\romnifunc\0\0À\25\1\0\19\0q\0Ø\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0016\3\4\0009\3\5\0039\3\6\0039\3\a\3B\3\1\0A\1\0\0026\2\0\0'\4\b\0B\2\2\0026\3\0\0'\5\t\0B\3\2\0026\4\0\0'\6\n\0B\4\2\0026\5\4\0009\5\5\0059\5\v\0056\6\4\0009\6\5\0069\6\r\0066\b\4\0009\b\5\b9\b\14\b9\b\15\b5\t\16\0B\6\3\2=\6\f\0055\5\17\0006\6\18\0\18\b\5\0B\6\2\4H\t\f€'\v\19\0\18\f\t\0&\v\f\v6\f\4\0009\f\20\f9\f\21\f\18\14\v\0005\15\22\0=\n\23\15=\v\24\15=\v\25\15B\f\3\1F\t\3\3R\tò6\6\4\0009\6\26\6)\aú\0=\a\27\0066\6\4\0009\6\28\6'\b\29\0B\6\2\0016\6\4\0009\6\28\6'\b\30\0B\6\2\0016\6\4\0009\6\5\0069\6\14\0069\6\31\0063\a \0006\b\4\0009\b\5\b9\b\14\b=\a\31\b9\b!\0025\n#\0005\v\"\0=\v$\n5\v)\0009\f%\0035\14&\0005\15'\0=\15(\14B\f\2\2=\f*\v=\v+\n5\v-\0003\f,\0=\f.\v=\v/\n5\v3\0009\f0\0029\0140\0029\0141\14)\16üÿB\14\2\0025\0152\0B\f\3\2=\f4\v9\f0\0029\0140\0029\0141\14)\16\4\0B\14\2\0025\0155\0B\f\3\2=\f6\v9\f0\0029\0140\0029\0147\14B\14\1\0025\0158\0B\f\3\2=\f9\v9\f0\0025\14;\0009\0150\0029\15:\15B\15\1\2=\15<\0149\0150\0029\15=\15B\15\1\2=\15>\14B\f\2\2=\f?\v9\f0\0029\f@\f5\14A\0009\15B\0029\15C\15=\15D\14B\f\2\2=\fE\v3\fF\0=\fG\v3\fH\0=\fI\v=\v0\n9\vJ\0029\vK\v4\r\3\0005\14L\0>\14\1\r4\14\3\0005\15M\0>\15\1\14B\v\3\2=\vK\nB\b\2\0019\b!\0029\bN\b'\nO\0005\vQ\0004\f\3\0005\rP\0>\r\1\f=\fK\vB\b\3\0019\b!\0029\bN\b'\nR\0005\vU\0009\fJ\0029\fK\f4\14\3\0005\15S\0>\15\1\0144\15\3\0005\16T\0>\16\1\15B\f\3\2=\fK\vB\b\3\0013\bV\0005\tW\0006\nX\0\18\f\t\0B\n\2\4X\r\b€8\15\14\0009\15!\0155\17Y\0=\bZ\17=\1[\0175\18\\\0=\18]\17B\15\2\1E\r\3\3R\rö9\n^\0009\n!\n5\f_\0=\bZ\f5\r`\0=\ra\f5\rc\0005\14b\0=\14a\r5\14m\0005\15d\0005\16e\0=\16f\0155\16g\0=\16h\0155\16i\0=\16j\0155\16k\0=\16l\15=\15n\14=\14o\r=\rp\fB\n\2\0012\0\0€K\0\1\0\17init_options\flinters\veslint\1\0\0\15securities\1\0\2\0061\fwarning\0062\nerror\14parseJson\1\0\a\fmessage\27${message} [${ruleId}]\14endColumn\14endColumn\fendLine\fendLine\vcolumn\vcolumn\tline\tline\15errorsRoot\16[0].message\rsecurity\rseverity\targs\1\a\0\0\f--cache\f--stdin\21--stdin-filename\14%filepath\r--format\tjson\17rootPatterns\1\4\0\0\t.git\17.eslintrc.js\18.package.json\1\0\3\fcommand\reslint_d\15sourceName\veslint\rdebounce\3ô\3\1\0\0\1\0\4\20javascriptreact\veslint\15javascript\veslint\15typescript\veslint\20typescriptreact\veslint\14filetypes\1\5\0\0\15javascript\20javascriptreact\15typescript\20typescriptreact\1\0\0\17diagnosticls\nflags\1\0\1\26debounce_text_changes\3–\1\17capabilities\14on_attach\1\0\0\vipairs\1\2\0\0\rtsserver\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\fsources\vconfig\f<S-Tab>\0\n<Tab>\0\t<CR>\14behaviour\fReplace\20ConfirmBehavior\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\0\0\1\3\0\0\6i\6c\16scroll_docs\fmapping\fsnippet\vexpand\1\0\0\0\15formatting\vformat\1\0\0\tmenu\1\0\5\tpath\v[Path]\vbuffer\r[Buffer]\rnvim_lsp\n[LSP]\fluasnip\14[LuaSnip]\fcmdline\n[CMD]\1\0\1\14with_text\2\15cmp_format\15completion\1\0\0\1\0\1\16completeopt\26menu,menuone,noinsert\nsetup\0\14set_signs¨\6      highlight LspDiagnosticsLineNrError guibg=#51202A guifg=#FF0000 gui=bold\n      highlight LspDiagnosticsLineNrWarning guibg=#51412A guifg=#FFA500 gui=bold\n      highlight LspDiagnosticsLineNrInformation guibg=#1E535D guifg=#00FFFF gui=bold\n      highlight LspDiagnosticsLineNrHint guibg=#1E205D guifg=#0000FF gui=bold\n\n      sign define DiagnosticsSignError text= texthl=LspDiagnosticsSignError linehl= numhl=LspDiagnosticsLineNrError\n      sign define DiagnosticsSignWarn text= texthl=LspDiagnosticsSignWarning linehl= numhl=LspDiagnosticsLineNrWarning\n      sign define DiagnosticsSignInfo text= texthl=LspDiagnosticsSignInformation linehl= numhl=LspDiagnosticsLineNrInformation\n      sign define DiagnosticsSignHint text= texthl=LspDiagnosticsSignHint linehl= numhl=LspDiagnosticsLineNrHint\n    eautocmd CursorHold,CursorHoldI * lua vim.lsp.diagnostic.show_line_diagnostics({focusable=false})\bcmd\15updatetime\6o\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\23LspDiagnosticsSign\npairs\1\0\4\tHint\5\fWarning\5\nError\5\16Information\5\1\0\4\14underline\2\nsigns\2\17virtual_text\1\21update_in_insert\1\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\fluasnip\flspkind\bcmp\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nþ\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\15\0\0\fcomment\bcss\15dockerfile\fgraphql\thtml\thttp\15javascript\njsdoc\tjson\blua\vpython\btsx\15typescript\tyaml\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n‘\2\0\0\a\0\18\0\0226\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\b\0005\4\6\0005\5\4\0005\6\3\0=\6\5\5=\5\a\4=\4\t\0035\4\v\0005\5\n\0=\5\f\0045\5\r\0=\5\14\4=\4\15\3B\1\2\0019\1\16\0'\3\17\0B\1\2\1K\0\1\0\bfzf\19load_extension\fpickers\16grep_string\1\0\1\vhidden\2\15find_files\1\0\0\1\0\1\vhidden\2\rdefaults\1\0\0\18layout_config\1\0\0\15horizontal\1\0\0\1\0\2\19preview_cutoff\0032\18preview_width\3P\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-test"] = {
    config = { "\27LJ\2\n5\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\nkitty\18test#strategy\6g\bvim\0" },
    loaded = true,
    path = "/Users/nathanstrickland/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/vim-test/vim-test"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n¯\2\0\5\16\1\b\0:\14\0\0\0X\5\3€6\5\0\0008\5\1\0058\0\2\5\14\0\0\0X\5\1€K\0\1\0004\5\0\0006\6\1\0\18\b\0\0B\6\2\4H\t\23€9\v\2\n9\v\3\v9\v\4\v8\v\v\5\15\0\v\0X\f\r€9\v\2\n9\v\3\v9\v\4\v8\v\v\0059\f\5\n9\r\5\v\1\f\r\0X\f\t€9\f\2\n9\f\3\f9\f\4\f<\n\f\5X\v\4€9\v\2\n9\v\3\v9\v\4\v<\n\v\5F\t\3\3R\tç4\6\0\0006\a\1\0\18\t\5\0B\a\2\4H\n\5€6\f\6\0009\f\a\f\18\14\6\0\18\15\v\0B\f\3\1F\n\3\3R\nù-\a\0\0\18\t\6\0\18\n\1\0\18\v\2\0\18\f\3\0\18\r\4\0B\a\6\1K\0\1\0\6À\vinsert\ntable\rseverity\tline\nstart\nrange\npairs\21diagnostic_cache-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\4À\tbody\15lsp_expandü\1\0\1\t\2\n\0\31-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\21€-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\14€6\1\3\0009\1\4\0019\1\5\0016\3\3\0009\3\6\0039\3\a\3'\5\b\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2'\4\t\0B\1\3\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\2À\4À\5!<Plug>luasnip-expand-or-jump\27nvim_replace_termcodes\bapi\rfeedkeys\afn\bvim\23expand_or_jumpable\21select_next_item\fvisibleñ\1\0\1\t\2\n\0 -\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\22€-\1\1\0009\1\2\1)\3ÿÿB\1\2\2\15\0\1\0X\2\14€6\1\3\0009\1\4\0019\1\5\0016\3\3\0009\3\6\0039\3\a\3'\5\b\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2'\4\t\0B\1\3\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\2À\4À\5\28<Plug>luasnip-jump-prev\27nvim_replace_termcodes\bapi\rfeedkeys\afn\bvim\rjumpable\21select_prev_item\fvisibleA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1À\24nvim_buf_set_keymap\bapi\bvimA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1À\24nvim_buf_set_option\bapi\bvimÔ\n\1\2\v\0(\0o3\2\0\0003\3\1\0\18\4\3\0'\6\2\0'\a\3\0B\4\3\0015\4\4\0\18\5\2\0'\a\5\0'\b\6\0'\t\a\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\b\0'\t\t\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\n\0'\t\v\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\f\0'\t\r\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\14\0'\t\15\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\16\0'\t\17\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\18\0'\t\19\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\20\0'\t\21\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\22\0'\t\23\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\24\0'\t\25\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\26\0'\t\27\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\28\0'\t\29\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\30\0'\t\31\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b \0'\t!\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b\"\0'\t#\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b$\0'\t%\0\18\n\4\0B\5\5\1\18\5\2\0'\a\5\0'\b&\0'\t'\0\18\n\4\0B\5\5\0012\0\0€K\0\1\0*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\r<space>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\r<space>e*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\fnoremap\2\vsilent\2\27v:lua.vim.lsp.omnifunc\romnifunc\0\0À\25\1\0\19\0q\0Ø\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0016\3\4\0009\3\5\0039\3\6\0039\3\a\3B\3\1\0A\1\0\0026\2\0\0'\4\b\0B\2\2\0026\3\0\0'\5\t\0B\3\2\0026\4\0\0'\6\n\0B\4\2\0026\5\4\0009\5\5\0059\5\v\0056\6\4\0009\6\5\0069\6\r\0066\b\4\0009\b\5\b9\b\14\b9\b\15\b5\t\16\0B\6\3\2=\6\f\0055\5\17\0006\6\18\0\18\b\5\0B\6\2\4H\t\f€'\v\19\0\18\f\t\0&\v\f\v6\f\4\0009\f\20\f9\f\21\f\18\14\v\0005\15\22\0=\n\23\15=\v\24\15=\v\25\15B\f\3\1F\t\3\3R\tò6\6\4\0009\6\26\6)\aú\0=\a\27\0066\6\4\0009\6\28\6'\b\29\0B\6\2\0016\6\4\0009\6\28\6'\b\30\0B\6\2\0016\6\4\0009\6\5\0069\6\14\0069\6\31\0063\a \0006\b\4\0009\b\5\b9\b\14\b=\a\31\b9\b!\0025\n#\0005\v\"\0=\v$\n5\v)\0009\f%\0035\14&\0005\15'\0=\15(\14B\f\2\2=\f*\v=\v+\n5\v-\0003\f,\0=\f.\v=\v/\n5\v3\0009\f0\0029\0140\0029\0141\14)\16üÿB\14\2\0025\0152\0B\f\3\2=\f4\v9\f0\0029\0140\0029\0141\14)\16\4\0B\14\2\0025\0155\0B\f\3\2=\f6\v9\f0\0029\0140\0029\0147\14B\14\1\0025\0158\0B\f\3\2=\f9\v9\f0\0025\14;\0009\0150\0029\15:\15B\15\1\2=\15<\0149\0150\0029\15=\15B\15\1\2=\15>\14B\f\2\2=\f?\v9\f0\0029\f@\f5\14A\0009\15B\0029\15C\15=\15D\14B\f\2\2=\fE\v3\fF\0=\fG\v3\fH\0=\fI\v=\v0\n9\vJ\0029\vK\v4\r\3\0005\14L\0>\14\1\r4\14\3\0005\15M\0>\15\1\14B\v\3\2=\vK\nB\b\2\0019\b!\0029\bN\b'\nO\0005\vQ\0004\f\3\0005\rP\0>\r\1\f=\fK\vB\b\3\0019\b!\0029\bN\b'\nR\0005\vU\0009\fJ\0029\fK\f4\14\3\0005\15S\0>\15\1\0144\15\3\0005\16T\0>\16\1\15B\f\3\2=\fK\vB\b\3\0013\bV\0005\tW\0006\nX\0\18\f\t\0B\n\2\4X\r\b€8\15\14\0009\15!\0155\17Y\0=\bZ\17=\1[\0175\18\\\0=\18]\17B\15\2\1E\r\3\3R\rö9\n^\0009\n!\n5\f_\0=\bZ\f5\r`\0=\ra\f5\rc\0005\14b\0=\14a\r5\14m\0005\15d\0005\16e\0=\16f\0155\16g\0=\16h\0155\16i\0=\16j\0155\16k\0=\16l\15=\15n\14=\14o\r=\rp\fB\n\2\0012\0\0€K\0\1\0\17init_options\flinters\veslint\1\0\0\15securities\1\0\2\0061\fwarning\0062\nerror\14parseJson\1\0\a\fmessage\27${message} [${ruleId}]\14endColumn\14endColumn\fendLine\fendLine\vcolumn\vcolumn\tline\tline\15errorsRoot\16[0].message\rsecurity\rseverity\targs\1\a\0\0\f--cache\f--stdin\21--stdin-filename\14%filepath\r--format\tjson\17rootPatterns\1\4\0\0\t.git\17.eslintrc.js\18.package.json\1\0\3\fcommand\reslint_d\15sourceName\veslint\rdebounce\3ô\3\1\0\0\1\0\4\20javascriptreact\veslint\15javascript\veslint\15typescript\veslint\20typescriptreact\veslint\14filetypes\1\5\0\0\15javascript\20javascriptreact\15typescript\20typescriptreact\1\0\0\17diagnosticls\nflags\1\0\1\26debounce_text_changes\3–\1\17capabilities\14on_attach\1\0\0\vipairs\1\2\0\0\rtsserver\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\fsources\vconfig\f<S-Tab>\0\n<Tab>\0\t<CR>\14behaviour\fReplace\20ConfirmBehavior\1\0\1\vselect\2\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\0\0\1\3\0\0\6i\6c\16scroll_docs\fmapping\fsnippet\vexpand\1\0\0\0\15formatting\vformat\1\0\0\tmenu\1\0\5\tpath\v[Path]\vbuffer\r[Buffer]\rnvim_lsp\n[LSP]\fluasnip\14[LuaSnip]\fcmdline\n[CMD]\1\0\1\14with_text\2\15cmp_format\15completion\1\0\0\1\0\1\16completeopt\26menu,menuone,noinsert\nsetup\0\14set_signs¨\6      highlight LspDiagnosticsLineNrError guibg=#51202A guifg=#FF0000 gui=bold\n      highlight LspDiagnosticsLineNrWarning guibg=#51412A guifg=#FFA500 gui=bold\n      highlight LspDiagnosticsLineNrInformation guibg=#1E535D guifg=#00FFFF gui=bold\n      highlight LspDiagnosticsLineNrHint guibg=#1E205D guifg=#0000FF gui=bold\n\n      sign define DiagnosticsSignError text= texthl=LspDiagnosticsSignError linehl= numhl=LspDiagnosticsLineNrError\n      sign define DiagnosticsSignWarn text= texthl=LspDiagnosticsSignWarning linehl= numhl=LspDiagnosticsLineNrWarning\n      sign define DiagnosticsSignInfo text= texthl=LspDiagnosticsSignInformation linehl= numhl=LspDiagnosticsLineNrInformation\n      sign define DiagnosticsSignHint text= texthl=LspDiagnosticsSignHint linehl= numhl=LspDiagnosticsLineNrHint\n    eautocmd CursorHold,CursorHoldI * lua vim.lsp.diagnostic.show_line_diagnostics({focusable=false})\bcmd\15updatetime\6o\nnumhl\vtexthl\ttext\1\0\0\16sign_define\afn\23LspDiagnosticsSign\npairs\1\0\4\tHint\5\fWarning\5\nError\5\16Information\5\1\0\4\14underline\2\nsigns\2\17virtual_text\1\21update_in_insert\1\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\fluasnip\flspkind\bcmp\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: vim-test
time([[Config for vim-test]], true)
try_loadstring("\27LJ\2\n5\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\nkitty\18test#strategy\6g\bvim\0", "config", "vim-test")
time([[Config for vim-test]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n“\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\21filetype_exclude\1\2\0\0\thelp\20buftype_exclude\1\0\0\1\3\0\0\rterminal\vnofile\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nþ\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\15\0\0\fcomment\bcss\15dockerfile\fgraphql\thtml\thttp\15javascript\njsdoc\tjson\blua\vpython\btsx\15typescript\tyaml\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nÂ\5\0\0\a\0#\00036\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\t\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0034\4\0\0=\4\b\3=\3\n\0025\3\f\0005\4\v\0=\4\r\0035\4\14\0005\5\15\0005\6\16\0=\6\17\5>\5\3\4=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\3=\3\27\0025\3\28\0004\4\0\0=\4\r\0034\4\0\0=\4\18\0035\4\29\0=\4\20\0035\4\30\0=\4\22\0034\4\0\0=\4\24\0034\4\0\0=\4\26\3=\3\31\0024\3\0\0=\3 \0025\3!\0=\3\"\2B\0\2\1K\0\1\0\15extensions\1\3\0\0\rfugitive\14nvim-tree\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\fsources\1\3\0\0\rnvim_lsp\bcoc\1\2\0\0\16diagnostics\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\tleft\bî‚°\nright\bî‚²\25component_separators\1\0\2\tleft\bî‚±\nright\bî‚³\1\0\3\18icons_enabled\2\25always_divide_middle\2\ntheme\18material-nvim\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: material.nvim
time([[Config for material.nvim]], true)
try_loadstring("\27LJ\2\nÊ\1\0\0\5\0\n\0\0166\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\5\0005\4\4\0=\4\6\0034\4\0\0=\4\a\0035\4\b\0=\4\t\3B\1\2\1K\0\1\0\fdisable\1\0\1\16term_colors\1\21contrast_windows\fitalics\1\0\2\rcontrast\2\15popup_menu\nlight\1\0\1\rcomments\2\nsetup\rmaterial\20material/colors\frequire\0", "config", "material.nvim")
time([[Config for material.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n‘\2\0\0\a\0\18\0\0226\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\b\0005\4\6\0005\5\4\0005\6\3\0=\6\5\5=\5\a\4=\4\t\0035\4\v\0005\5\n\0=\5\f\0045\5\r\0=\5\14\4=\4\15\3B\1\2\0019\1\16\0'\3\17\0B\1\2\1K\0\1\0\bfzf\19load_extension\fpickers\16grep_string\1\0\1\vhidden\2\15find_files\1\0\0\1\0\1\vhidden\2\rdefaults\1\0\0\18layout_config\1\0\0\15horizontal\1\0\0\1\0\2\19preview_cutoff\0032\18preview_width\3P\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n¿\1\0\0\6\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0004\4\3\0005\5\4\0>\5\1\4=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\1\rfiletype\rNvimTree\1\0\3\28show_buffer_close_icons\1\25enforce_regular_tabs\2\20show_close_icon\1\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\nŒ\2\0\0\a\0\b\1\0145\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\0026\4\2\0009\4\5\0049\4\6\4)\6\0\0B\4\2\0A\2\0\0?\2\0\0=\1\a\0L\0\2\0\targs\22nvim_buf_get_name\bapi\16shellescape\afn\bvim\1\v\0\0\24--config-precedence\16prefer-file\19--single-quote\17--prose-wrap\valways\19--arrow-parens\navoid\21--trailing-comma\ball\21--stdin-filepath\1\0\2\bexe\rprettier\nstdin\2\23€€À™\4Õ\3\1\0\6\0\21\0.3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0005\4\5\0004\5\3\0>\0\1\5=\5\6\0044\5\3\0>\0\1\5=\5\a\0044\5\3\0>\0\1\5=\5\b\0044\5\3\0>\0\1\5=\5\t\0044\5\3\0>\0\1\5=\5\n\0044\5\3\0>\0\1\5=\5\v\0044\5\3\0>\0\1\5=\5\f\0044\5\3\0>\0\1\5=\5\r\0044\5\3\0>\0\1\5=\5\14\0044\5\3\0>\0\1\5=\5\15\4=\4\16\3B\1\2\0016\1\17\0009\1\18\0019\1\19\1'\3\20\0+\4\2\0B\1\3\1K\0\1\0}      augroup FormatAutogroup\n        autocmd!\n        autocmd BufWritePost *.js,*.ts FormatWrite\n      augroup END\n    \14nvim_exec\bapi\bvim\rfiletype\thtml\tyaml\rmarkdown\fgraphql\tjson\bcss\20typescriptreact\15typescript\20javascriptreact\15javascript\1\0\0\1\0\1\flogging\2\nsetup\14formatter\frequire\0\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
