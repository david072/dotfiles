-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

require("user.plugins")
require("user.colorscheme")
require("user.options")
require("user.keymaps")
require("user.which-key")

vim.opt.relativenumber = true
lvim.leader = "space"

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "clangd" })

local lsp_manager = require("lvim.lsp.manager");

lsp_manager.setup("clangd", {
  cmd = {
    "clangd",
    "--offset-encoding=utf-16"
    -- "--background-index=0",
    -- "--query-driver=\"/home/david/dev/serenity/Toolchain/Local/**/*\"",
    -- "--header-insertion=never",
  }
});
lsp_manager.setup("eslint", {
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
  settings = {
    workingDirectory = { mode = "location" },
  },
});
lsp_manager.setup("tsserver", {
  on_attach = function(client, bufnr)
    require("lvim.lsp").common_on_attach(client, bufnr);
    client.server_capabilities.documentFormattingProvider = false;
    client.server_capabilities.documentFormattingRangeProvider = false;
  end,
});
lsp_manager.setup("gdscript", {});
-- lsp_manager.setup("sourcekit", {});

local sysname = vim.loop.os_uname().sysname
if sysname == "Darwin" then
  lsp_manager.setup("ocamllsp", {
    cmd = {
      "/Users/dg/.opam/default/bin/ocamllsp"
    }
  });
end
