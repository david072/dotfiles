return {
	{
		"jakewvincent/mkdnflow.nvim",
		ft = { "markdown" },
		rocks = "luautf8",
		opts = {},
		enabled = false,
	},
	{ "AckslD/nvim-FeMaco.lua", ft = { "markdown" }, opts = {} },
	{ "mzlogin/vim-markdown-toc", ft = { "markdown" } },
	{
		"renerocksai/telekasten.nvim",
		dependencies = { "nvim-telescope/telescope.nvim" },
		opts = {
			home = vim.env.HOME .. "/zettelkasten",
		},
		ft = { "markdown" },
	},
	{ "ellisonleao/glow.nvim", config = true, cmd = "Glow" },
	-- { "toppair/peek.nvim", run = "deno task --quiet build:fast" },
	-- glow.nvim
	-- https://github.com/rockerBOO/awesome-neovim#markdown-and-latex
}
