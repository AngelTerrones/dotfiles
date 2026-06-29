return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- Add doxygen to the list of automatically installed parsers
    if type(opts.ensure_installed) == "table" then
      vim.list_extend(opts.ensure_installed, { "doxygen" })
    end
  end,
}
