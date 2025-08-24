return {
  {
    'andweeb/presence.nvim',
    config = function()
      require('presence').setup {
        auto_update = true,
        neovim_image_text = 'VSCode Sucks',
        main_image = 'file',
        -- log_level = 'info',
        debounce_timeout = 10,
        enable_line_number = false,
        show_time = true,
        buttons = false,

        -- Rich Presence text options
        editing_text = 'Editing %s', -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
        file_explorer_text = 'Browsing %s', -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
        git_commit_text = 'Committing changes', -- Format string rendered when committing changes in git (either string or function(filename: string): string)
        plugin_manager_text = 'Managing plugins', -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
        reading_text = 'Reading %s', -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
        workspace_text = 'Workspace: %s', -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
      }
    end,
  },
}
