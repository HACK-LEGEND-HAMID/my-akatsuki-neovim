-- Safe require (taake error na aaye)
local ok, fzf = pcall(require, "fzf-lua")
if not ok then return end

fzf.setup({
  winopts = {
    height = 0.90,
    width  = 0.85,
    preview = { layout = "vertical" },
  },
  files = { -- make files snappy
    prompt = "Files❯ ",
    git_icons = true,
    file_icons = true,
    color_icons = true,
  },
  grep = {
    prompt = "Grep❯ ",
    rg_opts = "--hidden --glob !.git/ -n --column --smart-case",
  },
  git = {
    status = { prompt = "GitStatus❯ " },
    commits = { prompt = "Commits❯ " },
    bcommits = { prompt = "BufferCommits❯ " },
  },
})

-- 🔑 Keymaps:
-- <leader>f  => file picker
vim.keymap.set("n", "<leader>f", fzf.files, { desc = "FZF: Find Files", silent = true })

-- <leader>g  => live grep (ripgrep required)
vim.keymap.set("n", "<leader>g", fzf.live_grep, { desc = "FZF: Live Grep", silent = true })

-- Extra git power:
vim.keymap.set("n", "<leader>gf", fzf.git_files,   { desc = "FZF: Git Files",   silent = true })
vim.keymap.set("n", "<leader>gs", fzf.git_status,  { desc = "FZF: Git Status",  silent = true })
vim.keymap.set("n", "<leader>gc", fzf.git_commits, { desc = "FZF: Git Commits", silent = true })
vim.keymap.set("n", "<leader>gb", fzf.git_bcommits,{ desc = "FZF: Buffer Commits", silent = true })
vim.keymap.set("n", "<leader>bb", fzf.buffers,     { desc = "FZF: Buffers",     silent = true })
