return {
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('nvim-tree').setup {
        view = {
          side = 'right',
          width = 40,
        },
      }
      vim.keymap.set('n', '<leader>ls', ':NvimTreeToggle<CR>', { desc = 'Open neovim tree' })
      vim.api.nvim_create_autocmd('FileType', {
        pattern = 'NvimTree',
        callback = function()
          vim.opt_local.winbar = nil
        end,
      })
    end,
  },
}
