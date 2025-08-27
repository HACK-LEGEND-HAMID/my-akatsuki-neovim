-- Optional: basic setup tweaks (safe defaults)
vim.g.neo_tree_remove_legacy_commands = 1

-- Open explorer on right side with Ctrl+X
vim.keymap.set("n", "<C-x>", ":Neotree filesystem reveal right<CR>",
  { noremap = true, silent = true, desc = "Neo-tree: Reveal Right" })

-- Also a toggle with <leader>e (handy)
vim.keymap.set("n", "<leader>e", ":Neotree toggle right<CR>",
  { noremap = true, silent = true, desc = "Neo-tree: Toggle Right" })

