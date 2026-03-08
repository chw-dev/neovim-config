-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`


vim.o.number = true -- Make line numbers default
vim.o.relativenumber = true
vim.o.mouse = 'a'-- Enable mouse mode, can be useful for resizing splits for example!
vim.o.showmode = false -- Don't show the mode, since it's already in the status line

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

vim.o.breakindent = true
vim.o.undofile = true 
vim.o.ignorecase = true 
vim.o.smartcase = true
vim.o.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
--
--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-guide-options`
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.o.inccommand = 'split'
vim.o.cursorline = true
vim.o.scrolloff = 10
vim.o.confirm = true
vim.opt.undodir = vim.fn.stdpath("state") .. "/undo"

-- Writing / note-taking ergonomics
vim.o.wrap = true
vim.o.linebreak = true

-- Searching
vim.o.hlsearch = true
vim.o.incsearch = true

-- Buffer behavior
vim.o.hidden = true

-- Completion
vim.o.completeopt = "menuone,noselect"

-- Folding
vim.o.foldmethod = "indent"
vim.o.foldlevel = 99

-- Writing guides
vim.o.colorcolumn = "100"