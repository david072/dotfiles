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
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require("tokyonight").setup({
        style = "night",
        transparent = true,
        lualine_bold = true,
        on_highlights = function(hl, c)
          local prompt = "#2d3149"
          hl.TelescopeNormal = {
            bg = c.bg_dark,
            fg = c.fg_dark,
          }
          hl.TelescopeResultsBorder = {
            bg = c.bg_dark,
            fg = c.bg_dark,
          }
          hl.TelescopePreviewBorder = {
            bg = c.bg_dark,
            fg = c.bg_dark,
          }
          hl.TelescopePromptNormal = {
            bg = prompt,
          }
          hl.TelescopePromptBorder = {
            bg = prompt,
            fg = prompt,
          }
          hl.TelescopePromptTitle = {
            bg = prompt,
            fg = prompt,
          }
          hl.TelescopePreviewTitle = {
            bg = prompt,
            fg = c.fg_dark,
          }
          hl.TelescopeResultsTitle = {
            bg = prompt,
            fg = c.fg_dark,
          }
          lvim.builtin["terminal"].highlights = {
            FloatBorder = {
              guibg = c.bg_dark,
              guifg = c.bg_dark,
            },
            NormalFloat = {
              guibg = c.bg_dark,
            },
          }
        end,
      })
    end,
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
  -- Make sure /usr/bin/dart exists or make it a symlink to the dart executable if it doesn't
  { "stevearc/dressing.nvim" },
  {
    "akinsho/flutter-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "stevearc/dressing.nvim" },
    config = function()
      require("flutter-tools").setup({
        lsp = {
          on_attach = require("lvim.lsp").common_on_attach,
        },
        flutter_path = "/var/lib/snapd/snap/bin/flutter"
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

  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<C-l>",
            accept_word = "<C-b>",
            accept_line = "<F2>",
          }
        }
      })
    end,
  },
  { "AndreM222/copilot-lualine" },
}
