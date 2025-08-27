-- 1) Core options (tabs, leader, etc.)
require("plugins.vim-option")

-- 2) Load plugins (lazy.nvim bootstrap + specs)
require("plugins")

-- 3) Configure each plugin (order matters)
require("plugins.tokyonight")   -- colorscheme
require("plugins.fzf-lua")      -- fzf-lua + keymaps
require("plugins.neo-tree")     -- explorer + <C-x>
require("plugins.treesitter")   -- syntax 
