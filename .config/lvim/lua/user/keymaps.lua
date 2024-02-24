lvim.leader = "space"

-- Better viewing
lvim.keys.normal_mode["n"] = "nzzzv"
lvim.keys.normal_mode["N"] = "Nzzzv"

-- Add undo breakpoints
lvim.keys.insert_mode[","] = ",<c-g>u"
lvim.keys.insert_mode["."] = ".<c-g>u"
lvim.keys.insert_mode[";"] = ";<c-g>u"

-- Paste over currently selected text without yanking it (paste, re-select last selection ("gv") and yank)
lvim.keys.visual_mode["p"] = "pgvy"

-- Move lines
lvim.keys.visual_mode["<S-j>"] = ":m '>+1<CR>gv=gv"
lvim.keys.visual_mode["<S-k>"] = ":m '<-2<CR>gv=gv"

-- Terminal mode
lvim.keys.term_mode["<ESC>"] = "<C-\\><C-n>"

-- Clear search highlights
lvim.keys.normal_mode["<ESC>"] = ":nohlsearch<CR>"
