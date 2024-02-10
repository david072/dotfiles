lvim.log.level = "warn"
lvim.format_on_save = true

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "typescript",
  "json",
  "lua",
  "python",
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
  "dune-project",
  "Cargo.toml",
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

local trouble = require("trouble.providers.telescope");
lvim.builtin.telescope.defaults.mappings.i["<C-t>"] = trouble.open_with_trouble
lvim.builtin.telescope.defaults.mappings.n["<C-t>"] = trouble.open_with_trouble

-- Copied from LunarVim to remove the Copilot language server display
local custom_lsp_component = {
  function()
    local buf_clients = vim.lsp.get_active_clients { bufnr = 0 }
    if #buf_clients == 0 then
      return "LSP Inactive"
    end

    local buf_ft = vim.bo.filetype
    local buf_client_names = {}

    -- add client
    for _, client in pairs(buf_clients) do
      if client.name ~= "null-ls" and client.name ~= "copilot" then
        table.insert(buf_client_names, client.name)
      end
    end

    -- add formatter
    local formatters = require "lvim.lsp.null-ls.formatters"
    local supported_formatters = formatters.list_registered(buf_ft)
    vim.list_extend(buf_client_names, supported_formatters)

    -- add linter
    local linters = require "lvim.lsp.null-ls.linters"
    local supported_linters = linters.list_registered(buf_ft)
    vim.list_extend(buf_client_names, supported_linters)

    local unique_client_names = table.concat(buf_client_names, ", ")
    local language_servers = string.format("[%s]", unique_client_names)

    return language_servers
  end,
  color = { gui = "bold" },
  cond = require("lvim.core.lualine.conditions").hide_in_width,
}

lvim.builtin.lualine.on_config_done = function(lualine)
  local config = lualine.get_config()
  table.insert(config.sections.lualine_x, "copilot")
  table.remove(config.sections.lualine_x, 2)
  table.insert(config.sections.lualine_x, 2, custom_lsp_component)
  lualine.setup(config)
end
