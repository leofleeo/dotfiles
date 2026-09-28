return {
	-- add gruvbox
	{ "catppuccin/nvim", as = "catppuccin" },

	-- Configure LazyVim to load gruvbox
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
}
