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

require("lvim.lsp.manager").setup("clangd", {
  cmd = {
    "clangd",
    "--background-index=0",
    "--query-driver=\"/home/david/dev/serenity/Toolchain/Local/**/*\"",
    "--header-insertion=never",
  }
});
