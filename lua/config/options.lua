-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local g = vim.g
local opt = vim.opt

opt.scrolloff = 20       -- Lines of context
opt.sidescrolloff = 8    -- Columns of context
opt.signcolumn = "yes:2" -- Always show the signcolumn, otherwise it would shift the text each time
-- opt.tabstop = 8 -- Number of spaces tabs count for
-- opt.shiftwidth = 0 -- Size of an indent
-- opt.formatoptions = "cro"
opt.cursorline = true
opt.colorcolumn = "80"
-- opt.smarttab = true
-- opt.autoindent = true
opt.textwidth = 300
-- opt.breakindent = true

-- Theme settings
opt.background = "dark"
g.gruvbox_material_background = "medium"
g.gruvbox_material_enable_bold = 1
g.gruvbox_material_enable_italic = 1
g.gruvbox_material_diagnostic_text_highlight = 1

-- Tmux integration
g.tmux_navigator_save_on_switch = 2
g.tmux_navigator_disable_when_zoomed = 1
g.tmux_navigator_preserve_zoom = 1

-- UndoTree
g.undotree_SplitWidth = 40

-- VimDoge
g.doge_doc_standard_python = "google"
g.doge_python_settings = { single_quotes = 0, omit_redundant_param_types = 0 }
vim.api.nvim_set_keymap("n", "<leader>cD", "<cmd>DogeGenerate<CR>", { desc = "Generate Documentation" })

-- Netrw
g.loaded_netrw = 1
-- g.netrw_liststyle = 3
-- g.netrw_preview = 1
-- g.netrw_winsize = 30
-- g.netrw_browse_split = 4
