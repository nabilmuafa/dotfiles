-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  -- NOTE: Plugins can also be added by using a table,
  -- with the first argument being the link and the following
  -- keys can be used to configure plugin behavior/loading/etc.
  --
  -- Use `opts = {}` to automatically pass options to a plugin's `setup()` function, forcing the plugin to be loaded.
  --

  -- modular approach: using `require 'path/name'` will
  -- include a plugin definition from file/path/name.lua

  require 'nabilmuafa/plugins/autopairs',
  require 'nabilmuafa/plugins/autotag',
  require 'nabilmuafa/plugins/gitsigns',
  require 'nabilmuafa/plugins/which-key',
  require 'nabilmuafa/plugins/telescope',
  require 'nabilmuafa/plugins/lspconfig',
  require 'nabilmuafa/plugins/conform',
  require 'nabilmuafa/plugins/copilot',
  require 'nabilmuafa/plugins/cmp',
  require 'nabilmuafa/plugins/todo-comments',
  require 'nabilmuafa/plugins/mini',
  require 'nabilmuafa/plugins/treesitter',
  require 'nabilmuafa/plugins/comment',
  require 'nabilmuafa/plugins/dracula',
  require 'nabilmuafa/plugins/presence',
  require 'nabilmuafa/plugins/indent-blackline',
  require 'nabilmuafa/plugins/markdown-preview',
  require 'nabilmuafa/plugins/nvim-cmp',
  require 'nabilmuafa/plugins/nvim-tree',
  require 'nabilmuafa/plugins/lualine',
  require 'nabilmuafa/plugins/nvim-treesitter',
  require 'nabilmuafa/plugins/vim-tmux-navigator',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
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

-- vim: ts=2 sts=2 sw=2 et
