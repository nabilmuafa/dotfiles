-- My definitive settings for all TypeScript/TSX files.
-- This autocmd ensures these settings are applied last, winning any
-- conflict with plugins like vim-sleuth.

local group = vim.api.nvim_create_augroup('MyTSXSettings', { clear = true })

vim.api.nvim_create_autocmd('BufEnter', {
  -- This pattern covers both .ts and .tsx files
  pattern = { '*.ts', '*.tsx' },
  group = group,
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
  end,
})
