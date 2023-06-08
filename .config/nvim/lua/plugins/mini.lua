return {
	{
		"echasnovski/mini.map",
		opts = {},
		keys = {
      --stylua: ignore
      { "<leader>vm", function() require("mini.map").toggle {} end, desc = "Toggle Minimap", },
		},
		config = function(_, opts)
			require("mini.map").setup(opts)
		end,
	},
	{
		"echasnovski/mini.jump",
		opts = {},
		keys = { "f", "F", "t", "T" },
		config = function(_, opts)
			require("mini.jump").setup(opts)
		end,
	},
	-- {
	--   "echasnovski/mini.comment",
	--   event = "VeryLazy",
	--   opts = {
	--     hooks = {
	--       pre = function()
	--         require("ts_context_commentstring.internal").update_commentstring {}
	--       end,
	--     },
	--   },
	--   config = function(_, opts)
	--     require("mini.comment").setup(opts)
	--   end,
	-- },
	{
		"echasnovski/mini.pairs",
		event = "VeryLazy",
		config = function(_, opts)
			require("mini.pairs").setup(opts)
		end,
	},
}
