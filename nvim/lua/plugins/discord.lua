return {
  {
    "IogaMaster/neocord",
    enabled = true,
    lazy = false,
    config = function()
      require("neocord").setup({
        logo = "auto",
        logo_tooltip = nil,
        main_image = "language",
        log_level = nil,
        debounce_timeout = 10,
        blacklist = {},
        file_assets = {},
        show_time = true,
        global_timer = false,
        editing_text = "Editing %s",
        file_explorer_text = "Browsing %s",
        git_commit_text = "Committing changes",
        plugin_manager_text = "Managing plugins",
        reading_text = "Reading bad code",
        workspace_text = "Working with elon musk",
        line_number_text = "Line %s out of %s",
        terminal_text = "Using Terminal",
      })
    end,
  },
}
