-- Load lspconfig
local lspconfig = require("lspconfig")

-- Example: Pyright (Python LSP)
lspconfig.pyright.setup{}

-- Example: Lua (Neovim config ke liye)
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
}

-- Example: HTML
lspconfig.html.setup{}

-- Example: CSS
lspconfig.cssls.setup{}
