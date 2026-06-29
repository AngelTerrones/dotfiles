return {
	-- buffer line
	{
		"akinsho/bufferline.nvim",
		opts = {
			options = {
				separator_style = "slope",
			},
		},
	},
	-- status line
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				--theme = "onedark",
				theme = "auto",
				component_separators = "",
				section_separators = { left = "", right = "" },
			},
		},
	},
}
