return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        disabled_filetypes = { 'packer', 'NvimTree' },
        options = {
          theme = 'dracula',
          section_separators = '',
          component_separators = { left = '|', right = '❬' },
          globalstatus = true,
        },
      }
    end,
  },
}
