lvim.plugins = {
  -- Colorschemes
  {
    "catppuccin/nvim",
    name = "catppuccin",
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    name = "gruvbox",
    config = function()
      require("gruvbox").setup({
        bold = true,
        italic = {
          emphasis = true,
          comments = true,
        },
        strikethrough = true,
        contrast = "hard",
        -- transparent_mode = true,
      })
    end
  },

  -- Highlight todo comments
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end
  },

  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    config = function()
      require("persistence").setup({
        dir = vim.fn.expand(vim.fn.stdpath "state" .. "/sessions/"),
        options = { "buffers", "curdir", "tabpages", "winsize" }
      })
    end
  },

  -- Jumping between vim and tmux panes
  { "christoomey/vim-tmux-navigator" },
  -- Quickly changing surrounding text (see https://github.com/tpope/vim-surround#surroundvim)
  -- (e.g. "Hello, World" -> cs"' -> 'Hello World')
  { "tpope/vim-surround" },

  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end
  },

  -- Repeating plugin commands with '.'
  { "tpope/vim-repeat" },

  -- Quickly jumping between recent files
  { "ThePrimeagen/harpoon" },

  -- Easier jumping to characters in a line
  {
    "smoka7/hop.nvim",
    config = function()
      require("hop").setup()
    end
  },

  {
    "nvim-telescope/telescope-frecency.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "kkharji/sqlite.lua" },
  },

  {
    "AckslD/nvim-trevJ.lua",
    config = 'require("trevj").setup()',
  },

  -- Flutter
  { "stevearc/dressing.nvim" },
  {
    "akinsho/flutter-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "stevearc/dressing.nvim" },
    config = function()
      require("flutter-tools").setup({
        lsp = {
          on_attach = require("lvim.lsp").common_on_attach,
        }
      })
    end
  },

  -- Quick-Fix list
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = { "smoka7/hydra.nvim" },
    opts = {},
    cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
  },
}
