return {
	"akinsho/flutter-tools.nvim",
	lazy = false,
	requires = { "nvim-lua/plenary.nvim" },
	config = function()
		require("flutter-tools").setup({
			outline = { auto_open = false },
			decorations = {
				statusline = { device = true, app_version = true },
			},
			lsp = {
				color = {
					enabled = true,
					background = true,
					virtual_text = true,
				},
				settings = {
					showTodos = true,
					renameFilesWithClasses = "prompt",
				},
			},
		})
	end,
}
