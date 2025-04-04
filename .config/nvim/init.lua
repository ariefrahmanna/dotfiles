require 'core.options'
require 'core.keymaps'
require 'core.commands'

-- Global settings
vim.g.have_nerd_font = false

-- [[ Install `lazy.nvim` plugin manager ]]
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
require('lazy').setup({
  -- Git & Version Control
  require 'plugins.gitsigns',
  require 'plugins.lazygit',
  require 'plugins.neo-tree',

  -- LSP & Text Completion
  require 'plugins.lsp',
  require 'plugins.text-completion',
  -- require 'plugins.none-ls',
  require 'plugins.lint',

  -- UI & Navigation
  require 'plugins.treesitter',
  require 'plugins.bufferline',
  require 'plugins.telescope',
  require 'plugins.which-key',
  require 'plugins.mini',
  require 'plugins.indent-blankline',
  require 'plugins.tmux-navigator',

  -- Code Formatting & Editing
  require 'plugins.auto-format',
  require 'plugins.auto-closing',
  require 'plugins.smart-indent',

  -- Debugging & Comments
  require 'plugins.debug',
  require 'plugins.comments',

  -- Themes & Appearance
  require 'plugins.theme',
}, {
  ui = {
    icons = {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
