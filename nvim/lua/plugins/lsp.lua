return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
          mason = false,
          settings = {
            ["rust-analyzer"] = {
              checkOnSave = {
                command = "clippy",
              },
              assist = {
                importGranularity = "module",
                importPrefix = "by_self",
              },
            },
          },
        },
        lua_ls = {
          mason = false,
          command = "lua-language-server",
        },
        vtsls = {
          mason = false,
          command = "vtsls",
          settings = {
            typescript = {
              inlayHints = {
                enumMemberValues = { enabled = false },
                functionLikeReturnTypes = { enabled = false },
                parameterNames = { enabled = false },
                parameterTypes = { enabled = false },
                propertyDeclarationTypes = { enabled = false },
                variableTypes = { enabled = false },
              },
            },
          },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        rust = { "rustfmt" },
        nix = { "alejandra" },
        lua = { "stylua" },
      },
      formatters = {
        stylua = {
          command = "stylua",
          mason = false,
        },
      },
    },
  },
}
