require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "lua", "javascript", "typescript", "python",
    "html", "css", "bash", "json", "markdown"
  },
  highlight = { enable = true },
  indent    = { enable = true },
})

