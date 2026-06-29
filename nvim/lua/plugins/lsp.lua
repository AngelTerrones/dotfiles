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
	-- set the dir build to the local `build` folder
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				clangd = {
					cmd = {
						"clangd",
						"--background-index",
						"--clang-tidy",
						"--compile-commands-dir=build",
						"--header-insertion=iwyu",
						"--completion-style=detailed",
						"--function-arg-placeholders",
						"--fallback-style=llvm",
					},
				},
			},
		},
	},
}
