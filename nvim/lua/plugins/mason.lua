return {
	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, {
				"stylua", -- formatter
				"shellcheck", -- static analysis tool for shell scripts
				"shfmt", -- shell formatter
				"pyright", -- python LSP
			})
		end,
	},
}
