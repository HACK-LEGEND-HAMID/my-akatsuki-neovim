
-- Plugin setup
return {
    'ellisonleao/glow.nvim',
    config = function()
-- Glow plugin setup
        require("glow").setup({})

-- Keymap: Ctrl+M se Markdown Preview open kare
        vim.keymap.set('n', '<C-M>', ":Glow<CR>", { desc = "Open Markdown Preview" })

-- Keymap: LSP hover info (show when we click Captital K)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Show hover info" })
    end,
    cmd = "Glow",
}
