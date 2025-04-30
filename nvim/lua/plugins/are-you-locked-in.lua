return {
  {
    "voltycodes/areyoulockedin.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
    config = function()
      require("areyoulockedin").setup({
        session_key = "your session key",
      })
    end,
  },
}
