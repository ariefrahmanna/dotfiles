vim.opt.hlsearch = false -- Set highlight on search
vim.opt.clipboard = 'unnamedplus' -- Sync clipboard between OS and Neovim.
vim.opt.number = true -- Enable line numbers
vim.opt.relativenumber = true -- Enable relative line numbers
vim.opt.mouse = 'a' -- Enable mouse mode
vim.opt.showmode = false -- Don't show mode, since it's already in the status line
vim.opt.breakindent = true -- Enable break indent
vim.opt.undofile = true -- Save undo history
vim.opt.ignorecase = true -- Case-insensitive searching UNLESS \C or capital in search
vim.opt.smartcase = true -- smart case
vim.wo.signcolumn = 'yes' -- Keep signcolumn on by default
vim.opt.updatetime = 250 -- Decrease update time
vim.opt.timeoutlen = 300 -- Time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.backup = false -- Disables creating backup file
vim.opt.writebackup = false -- Disables creating backup file on start
vim.opt.wrap = false -- Display lines as one long line
vim.opt.list = true -- Displays white character
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' } -- Sets how whitespace certain characters are displayed
vim.opt.inccommand = 'split' -- Preview substitutions live
vim.opt.cursorline = true -- Highlight the current line
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.scrolloff = 3 -- Minimal number of screen lines to keep above and below the cursor
vim.opt.confirm = true -- Raise a dialog for unsaved changes on exit
vim.opt.colorcolumn = '80'
vim.opt.conceallevel = 0 -- Make `` visible (for markdown files)
vim.opt.fileencoding = 'utf-8' -- Set file encoding to UTF-8
vim.opt.swapfile = false -- Disables swapfile
vim.opt.sidescrolloff = 8 -- minimal number of screen columns either side of cursor if wrap is `false`

-- Additionals
-- vim.opt.shiftwidth = 4 -- the number of spaces inserted for each indentation
-- vim.opt.tabstop = 4 -- insert n spaces for a tab
-- vim.opt.softtabstop = 4 -- Number of spaces that a tab counts for while performing editing operations
-- vim.opt.expandtab = true -- convert tabs to spaces
-- vim.opt.smartindent = true -- make indenting smarter again
