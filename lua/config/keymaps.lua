-- map leader to <space>
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Normal mode keymappings
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { desc = 'Move line down' })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { desc = 'Move line up' })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- See `:help telescope.builtin`
-- Telescope keymaps (safe with lazy-loading)
local function tb() return require 'telescope.builtin' end

vim.keymap.set('n', '<leader>fh', function() tb().help_tags() end, { desc = '[F]ind [H]elp' })
vim.keymap.set('n', '<leader>fk', function() tb().keymaps() end, { desc = '[F]ind [K]eymaps' })
vim.keymap.set('n', '<leader>ff', function() tb().find_files() end, { desc = '[F]ind [F]iles' })
vim.keymap.set('n', '<leader>fs', function() tb().builtin() end, { desc = '[F]ind [S]elect Telescope' })
vim.keymap.set({ 'n', 'v' }, '<leader>fw', function() tb().grep_string() end, { desc = '[F]ind current [W]ord' })
vim.keymap.set('n', '<leader>fg', function() tb().live_grep() end, { desc = '[F]ind by [G]rep' })
vim.keymap.set('n', '<leader>fd', function() tb().diagnostics() end, { desc = '[F]ind [D]iagnostics' })
vim.keymap.set('n', '<leader>fr', function() tb().resume() end, { desc = '[F]ind [R]esume' })
vim.keymap.set('n', '<leader>f.', function() tb().oldfiles() end, { desc = '[F]ind Recent Files ("." for repeat)' })
vim.keymap.set('n', '<leader>fc', function() tb().commands() end, { desc = '[F]ind [C]ommands' })
vim.keymap.set('n', '<leader><leader>', function() tb().buffers() end, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>fn', function() tb().find_files { cwd = vim.fn.stdpath 'config' } end, { desc = '[F]ind [N]eovim files' })

vim.keymap.set('n', '<leader>/', function()
  local themes = require 'telescope.themes'
  tb().current_buffer_fuzzy_find(themes.get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set(
  'n',
  '<leader>f/',
  function()
    tb().live_grep {
      grep_open_files = true,
      prompt_title = 'Live Grep in Open Files',
    }
  end,
  { desc = '[F]ind [/] in Open Files' }
)

-- Visual mode keymappings
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { desc = 'Move line down' })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { desc = 'Move line up' })

-- Go to my work directory
vim.keymap.set('n', '<leader>ww', function()
  vim.cmd 'tcd C:/Users/chris.wheeler/OneDrive - Danaher/1. WORK'
  print 'Switched to WORK directory'
end, { desc = 'Switch to WORK directory' })
