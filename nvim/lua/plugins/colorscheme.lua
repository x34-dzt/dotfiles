return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        term_colors = true,
        transparent_background = true,
        no_italic = false,
        no_bold = false,
        styles = {
          comments = { "italic" },
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = { "italic" },
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        color_overrides = {},
        custom_highlights = {},
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          telescope = true,
          bufferline = true,
        },
      })
      vim.cmd("colorscheme catppuccin")
      -- vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
      -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
      -- vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
      -- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
      -- vim.api.nvim_set_hl(0, "StatusLine", { bg = "NONE" })
      -- vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "NONE" })
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    config = function()
      -- Create a custom theme based on catppuccin with transparent backgrounds
      local colors = require("catppuccin.palettes").get_palette()
      local custom_catppuccin = {
        normal = {
          a = { fg = colors.base, bg = "NONE", gui = "bold" },
          b = { fg = colors.text, bg = "NONE" },
          c = { fg = colors.text, bg = "NONE" },
        },
        insert = {
          a = { fg = colors.base, bg = "NONE", gui = "bold" },
          b = { fg = colors.text, bg = "NONE" },
          c = { fg = colors.text, bg = "NONE" },
        },
        visual = {
          a = { fg = colors.base, bg = "NONE", gui = "bold" },
          b = { fg = colors.text, bg = "NONE" },
          c = { fg = colors.text, bg = "NONE" },
        },
        replace = {
          a = { fg = colors.base, bg = "NONE", gui = "bold" },
          b = { fg = colors.text, bg = "NONE" },
          c = { fg = colors.text, bg = "NONE" },
        },
        command = {
          a = { fg = colors.base, bg = "NONE", gui = "bold" },
          b = { fg = colors.text, bg = "NONE" },
          c = { fg = colors.text, bg = "NONE" },
        },
        inactive = {
          a = { fg = colors.surface1, bg = "NONE" },
          b = { fg = colors.surface1, bg = "NONE" },
          c = { fg = colors.surface1, bg = "NONE" },
        },
      }

      require("lualine").setup({
        options = {
          theme = custom_catppuccin,
          component_separators = "|",
          section_separators = { left = "", right = "" },
          globalstatus = true,
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff", "diagnostics" },
          lualine_c = {
            {
              "filename",
              path = 1,
              file_status = true,
            },
          },
          lualine_x = { "encoding", "fileformat", "filetype" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
      })
    end,
  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("bufferline").setup({
        options = {
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              highlight = "Directory",
              text_align = "left",
            },
          },
          separator_style = "",
          themable = true,
        },
        highlights = require("catppuccin.groups.integrations.bufferline").get({
          styles = { "italic", "bold" },
          custom = {
            all = {
              fill = { bg = "NONE" },
              background = { bg = "NONE" },
              tab = { bg = "NONE" },
              tab_selected = { bg = "NONE" },
              buffer = { bg = "NONE" },
              buffer_selected = { bg = "NONE", bold = true, italic = false },
            },
          },
        }),
      })
    end,
  },
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
  },
}
