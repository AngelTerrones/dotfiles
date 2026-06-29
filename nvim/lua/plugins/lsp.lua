return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				-- Replace 'pyright' with the name of the tool you installed on your system
				clangd = { mason = false },
				ruff = { mason = false },
				ty = { mason = false },
			},
		},
	},
}
