-- nvim
vim.api.nvim_set_keymap('n', '<Space>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('v', '<Space>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('n', '<CR>', 'o', { noremap = true })
vim.api.nvim_set_keymap('n', '<BS>', 'dd', { noremap = true })

vim.api.nvim_set_keymap('n', '<C-[>', ':bp<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-]>', ':bn<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-p>', ':b#<CR>', { noremap = true })

vim.api.nvim_set_keymap('c', '<C-j>', '<Down>', {})
vim.api.nvim_set_keymap('c', '<C-k>', '<Up>', {})

vim.api.nvim_set_keymap('n', '<leader>x', ':bd<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>X', ':bd!<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>s', ':w<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', '<C-H>', '<C-W>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W>l', { noremap = true })
vim.api.nvim_set_keymap('v', '<C-c>', '"*y', { noremap = true })
vim.api.nvim_set_keymap('', '<C-v>', '"*p', { noremap = false })

-- telescope
vim.api.nvim_set_keymap('n', '<leader>o', '<cmd>lua require("telescope.builtin").find_files()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', { noremap = true })

-- nvim-tree
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeToggle<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeFindFile<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>r', ':NvimTreeRefresh<CR>', { noremap = true })

-- comment.nvim
vim.api.nvim_set_keymap('n', '<leader>/', '<cmd>lua vim.fn.feedkeys("gcc")<cr>', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>/', '<cmd>lua vim.fn.feedkeys("gc")<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>?', '<cmd>lua vim.fn.feedkeys("gbc")<cr>', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>?', '<cmd>lua vim.fn.feedkeys("gb")<cr>', { noremap = true })

-- hop
-- place this in one of your configuration file(s)
vim.api.nvim_set_keymap('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})

vim.api.nvim_set_keymap('n', '<leader>f', "<cmd>lua require'hop'.hint_char2({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>F', "<cmd>lua require'hop'.hint_char2({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>", {})

vim.api.nvim_set_keymap('n', '<leader>w', "<cmd>lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>", {})
vim.api.nvim_set_keymap('n', '<leader>W', "<cmd>lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>", {})

vim.api.nvim_set_keymap('n', '<leader>l', "<cmd>lua require'hop'.hint_lines()<cr>", {})

vim.api.nvim_set_keymap("n", "<leader>vv", "<cmd>Trouble<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>vw", "<cmd>Trouble lsp_workspace_diagnostics<cr>", 
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>vd", "<cmd>Trouble lsp_document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>vl", "<cmd>Trouble loclist<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>vq", "<cmd>Trouble quickfix<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>",
  {silent = true, noremap = true}
)

-- vim-test
vim.api.nvim_set_keymap('n', '<leader>tn', ':TestNearest<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>tf', ':TestFile<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ts', ':TestSuite<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>tl', ':TestLast<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>tv', ':TestVisit<CR>', { noremap = true })

-- toggle-term
function _G.set_terminal_keymaps()
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], { noremap = true })
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], { noremap = true })
  -- vim.api.nvim_set_keymap('n', '[[<C-\\>]]', ':ToggleTermToggleAll<CR>', { noremap = true })
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
