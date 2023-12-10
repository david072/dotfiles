lvim.log.level = "warn"
lvim.format_on_save = true

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"

lvim.builtin.treesitter.ignore_install = {}
lvim.builtin.treesitter.highlight.enable = true

lvim.builtin.project.detection_methods = { "lsp", "pattern" }
lvim.builtin.project.patterns = {
  ".git",
  "package-lock.json",
  "yarn.lock",
  "package.json",
  "requirements.txt",
  "pubspec.yaml",
}

local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
  i = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,
  },
  n = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
  },
}

lvim.builtin.telescope.on_config_done = function(telescope)
  pcall(telescope.load_extension, "flutter")
  pcall(telescope.load_extension, "frecency")
end

require("luasnip").filetype_extend("dart", { "flutter" })

-- treesitter dart workaround
-- lvim.builtin.treesitter.ignore_install = { "dart" }

vim.opt.shell = "/bin/fish"
vim.o.linebreak = true
vim.o.wrap = false
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- lvim.builtin.telescope.pickers = {
--   git_files = {
--     layout_config = {
--       width = 0.4,
--       height = 0.5,
--     },
--   },
--   live_grep = {
--     layout_config = {
--       width = 0.7,
--       height = 0.7,
--     },
--     prompt_position = "center",
--     layout_strategy = "horizontal",
--   }
-- }

-- lvim.builtin.telescope.pickers.live_grep.layout_config = { width = 0.7, height = 0.7 }
-- lvim.builtin.telescope.pickers.live_grep.layout_strategy = "horizontal"
-- lvim.builtin.telescope.pickers.live_grep.prompt_position = "center"

-- lvim.builtin.telescope.defaults.layout_config = {
--   prompt_position = "center",
--   height = 0.9,
--   width = 0.9,
--   bottom_pane = {
--     height = 25,
--     preview_cutoff = 120,
--     prompt_position = "bottom",
--   },
--   center = {
--     height = 0.4,
--     width = 0.5,
--     preview_cutoff = 40,
--     prompt_position = "center",
--   }
-- }

-- lvim.builtin.telescope = {
--   active = true,
--   defaults = {
--     layout_strategy = "horizontal",
--   },
-- }
