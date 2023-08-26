return {
	{
		"mrjones2014/legendary.nvim",
		keys = {
			{ "<C-p>", "<cmd>Legendary<cr>", desc = "Legendary" },
		},
		opts = {
			which_key = { auto_register = true },
		},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		config = function()
			local wk = require("which-key")
			wk.setup({
				show_help = false,
				plugins = { spelling = true },
				key_labels = { ["<leader>"] = "SPC" },
				triggers = "auto",
			})
			wk.register({
				w = { "<cmd>update!<CR>", "Save" },
				q = { "<cmd>lua require('util').smart_quit()<CR>", "Quit" },
				j = { name = "+Jump" },
				g = { name = "+Git" },
				b = { name = "+Buffers" },
				p = { name = "+Projects" },
				s = { name = "+Search" },
				v = { name = "+Other" },
				f = {
					name = "+Flutter",
					s = { "<cmd>FlutterRun<cr><cr>", "Start" },
					q = { "<cmd>FlutterQuit<cr>", "Quit" },
					r = { "<cmd>FlutterReload<cr>", "Hot reload" },
					R = { "<cmd>FlutterRestart<cr>", "Hot restart" },
				},
				c = {
					name = "+Code",
					x = {
						name = "Swap Next",
						f = "Function",
						p = "Parameter",
						c = "Class",
					},
					X = {
						name = "Swap Previous",
						f = "Function",
						p = "Parameter",
						c = "Class",
					},
				},
			}, { prefix = "<leader>" })
		end,
	},
}
