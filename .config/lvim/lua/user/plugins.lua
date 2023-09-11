lvim.plugins = {
  -- Colorschemes
  {
    "catppuccin/nvim",
    name = "catppuccin",
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

  { "tpope/vim-repeat" },

  -- Quickly jumping between recent files
  { "ThePrimeagen/harpoon" },

  -- Easier jumping to characters in a line
  {
    "phaazon/hop.nvim",
    branch = "v2",
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
    init = function()
      vim.keymap.set('n', '<leader>j', function()
        require("trevj").format_at_cursor()
      end)
    end
  },

  -- Flutter
  { "stevearc/dressing.nvim" },
  {
    "akinsho/flutter-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "stevearc/dressing.nvim" },
    config = function()
      require("flutter-tools").setup()
    end
  },

  -- Quick-Fix list
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
}
