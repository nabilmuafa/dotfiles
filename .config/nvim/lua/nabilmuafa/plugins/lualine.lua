return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          theme = 'dracula',
          section_separators = '',
          disabled_filetypes = { 'packer' },
          component_separators = { left = '|', right = '❬' },
          globalstatus = true,
        },
      }
    end,
  },
}
