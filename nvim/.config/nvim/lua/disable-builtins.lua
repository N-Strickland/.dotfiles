local disabled_built_ins ={
  'gzip',
  'rrhelper',
  'tarPlugin',
  'zipPlugin',
  'netrwPlugin',
  'netrwFileHandlers',
  'netrwSettings',
  '2html_plugin',
  'vimballPlugin',
  'getscriptPlugin',
  'logipat',
  'tutor_mode_plugin',
  'matchit',
}

for _, plugin in pairs(disabled_built_ins) do
  vim.g['loaded_' .. plugin] = 1
end