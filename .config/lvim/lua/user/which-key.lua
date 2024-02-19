local util = require("user.util")

local wk = lvim.builtin.which_key

wk.mappings["j"] = {
  '<cmd>lua require("trevj").format_at_cursor()<CR>',
  "trevJ",
}

wk.mappings["S"] = {
  name = "persistence.nvim",
  s = { "<cmd>lua require('persistence').load()<cr>", },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", },
  Q = { "<cmd>lua require('persistence').stop()<cr>", },
}

wk.mappings["l"]["t"] = { ":LvimToggleFormatOnSave<cr>" }
wk.mappings["l"]["R"] = { ":LspRestart<cr>" }

wk.mappings["s"]["W"] = {
  "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>') })<cr>",
  "Search Word Under Cursor"
}
wk.mappings["s"]["u"] = {
  "<cmd>Telescope buffers<cr>",
  "Buffers",
}

wk.mappings["m"] = {
  name = "Harpoon",
  m = { ":lua require('harpoon.mark').add_file()<cr>", "Mark File" },
  t = { ":lua require('harpoon.ui').toggle_quick_menu()<cr>", "Toggle UI" },
}

wk.mappings["X"] = { ":xa<cr>", "Save All and Quit" }

wk.mappings["t"] = {
  name = "Telescope",
  p = { ":Telescope projects<cr>", "Projects" },
  r = { ":Telescope resume<cr>", "Resume" },
  g = { ":Telescope git_files<cr>", "Git Files" },
}

wk.mappings["T"] = {
  name = "Trouble",
  t = { "<cmd>TroubleToggle<cr>", "Toggle" },
  r = { "<cmd>TroubleRefresh<cr>", "Refresh" },
}

wk.mappings["f"] = {
  "<cmd>Telescope find_files<cr>",
  "Find Files"
}

wk.mappings["F"] = {
  name = "Flutter",
  s = { "<cmd>FlutterRun<cr>", "Start" },
  c = { "<cmd>Telescope flutter commands<cr>", "Flutter Commands" },
  r = { "<cmd>FlutterReload<cr>", "Hot Reload" },
  R = { "<cmd>FlutterRestart<cr>", "Hot Restart" },
  q = { "<cmd>FlutterQuit<cr>", "Quit" },
}

wk.mappings["b"]["q"] = { "<cmd>bd<cr>", "Close" }
wk.mappings["b"]["m"] = {
  name = "Move",
  n = { "<cmd>BufferLineMoveNext<cr>", "Next" },
  p = { "<cmd>BufferLineMovePrev<cr>", "Prev" },
}

wk.mappings["G"] = {
  name = "Go To",
  c = { function() util.open_with_extension_if_exists("cpp") end, ".cpp file" },
  h = { function() util.open_with_extension_if_exists("h") end, ".h file" },
  p = { "<cmd>e %:h<cr>", "Parent Directory" }
}

wk.mappings["q"] = {}
wk.mappings["w"] = {}
wk.mappings["X"] = {}

wk.mappings["w"] = {
  name = "Floaterm",
  t = { "<cmd>FloatermNew<cr>", "New" },
  s = { "<cmd>FloatermShow<cr>", "Show" },
  h = { "<cmd>FloatermHide<cr>", "Hide" },
  n = { "<cmd>FloatermNext<cr>", "Next" },
  p = { "<cmd>FloatermPrev<cr>", "Prev" },
  k = { "<cmd>FloatermKill<cr>", "Kill" },
}

wk.mappings["b"] = {}

wk.mappings["e"] = { "<cmd>e %:h<cr>", "Explore Directory" }
