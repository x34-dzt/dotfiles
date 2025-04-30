return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      opts.ensure_installed = vim.tbl_filter(function(tool)
        return tool ~= "stylua"
      end, opts.ensure_installed)
      opts.exclude_install = opts.exclude_install or {}
      table.insert(opts.exclude_install, "stylua")
    end,
  },
}
