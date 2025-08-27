-- lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git","clone","--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
-- All plugins (specification)
require("lazy").setup({
  -- make work easy like grep find
  { "nvim-lua/plenary.nvim" },
  { "nvim-tree/nvim-web-devicons" },
  -- Theme
  { "folke/tokyonight.nvim", lazy = false, priority = 1000 },
  -- FZF (super fast fuzzy finder)
  { "ibhagwan/fzf-lua", dependencies = { "nvim-tree/nvim-web-devicons" } },
  -- Neo-tree (file explorer)
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
  },
  -- LSP Support
  { "neovim/nvim-lspconfig" },
  -- Mason for LSP, DAP, Linters, Formatters
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "pyright", "lua_ls", "html", "cssls" }
      })
    end,
  },
  -- Treesitter (syntax highlight and for indent)
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  -- Git signs
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end
  },
  -- Code Runner (like VS Code Ctrl+R)
  {
    "CRAG666/code_runner.nvim",
    config = function()
      require('code_runner').setup({
        filetype = {
          java = {
            "cd $dir &&",
            "javac $fileName &&",
            "java $fileNameWithoutExt"
          },
          python = "python3 -u",
          typescript = "deno run",
          rust = {
            "cd $dir &&",
            "rustc $fileName &&",
            "$dir/$fileNameWithoutExt"
          },
          c = function(...)
            local c_base = {
              "cd $dir &&",
              "gcc $fileName -o",
              "/tmp/$fileNameWithoutExt",
            }
            local c_exec = {
              "&& /tmp/$fileNameWithoutExt &&",
              "rm /tmp/$fileNameWithoutExt",
            }
            vim.list_extend(c_base, c_exec)
            return table.concat(c_base, " ")
          end,
          cpp = {
            "cd $dir &&",
            "g++ $fileName -o /tmp/$fileNameWithoutExt &&",
            "/tmp/$fileNameWithoutExt"
          },
          javascript = "node",
          html = "open",
          go = "go run",
          php = "php",
          lua = "lua",
          bash = "bash",
          sh = "sh"
        },
      })
      
      -- Set keybinding Ctrl+R for running code
      vim.keymap.set('n', '<C-r>', ':RunCode<CR>', { noremap = true, silent = false })
    end
  },
  -- Alpha dashboard
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.startify")
      
      -- Akatsuki color scheme setup
      vim.api.nvim_set_hl(0, "AkatsukiRed", { fg = "#FF0000", bold = true })
      vim.api.nvim_set_hl(0, "AkatsukiBlack", { fg = "#1a1a1a", bold = true })
      vim.api.nvim_set_hl(0, "AkatsukiCloud", { fg = "#696969" })
      vim.api.nvim_set_hl(0, "AmaterasuFire", { fg = "#FF6600", bold = true })
      
      -- Akatsuki logo/symbol
      dashboard.section.header.val = {
        "                                                                 ",
        "                                                                 ",
        "   █████╗ ██╗  ██╗ █████╗ ████████╗███████╗██╗   ██╗██╗  ██╗██╗  ",
        "  ██╔══██╗██║ ██╔╝██╔══██╗╚══██╔══╝██╔════╝██║   ██║██║ ██╔╝██║  ",
        "  ███████║█████╔╝ ███████║   ██║   ███████╗██║   ██║█████╔╝ ██║  ",
        "  ██╔══██║██╔═██╗ ██╔══██║   ██║   ╚════██║██║   ██║██╔═██╗ ██║  ",
        "  ██║  ██║██║  ██╗██║  ██║   ██║   ███████║╚██████╔╝██║  ██╗██║  ",
        "  ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ",
        "                                                                 ",
        "                ░░░░░░░░░░ ORGANIZATION ░░░░░░░░░░               ",
        "                                                                 ",
        "                   🔥 ░▒▓█ AMATERASU █▓▒░ 🔥                     ",
        "                                                                 ",
        "      ■ WAKE UP TO REALITY! NOTHING EVER GOES AS PLANNED ■       ",
        "       ■ IN THIS ACCURSED WORLD. THE LONGER YOU LIVE, ■          ",
        "        ■ THE MORE YOU REALIZE THAT REALITY IS JUST ■            ",
        "         ■ MADE OF PAIN, SUFFERING AND EMPTINESS ■               ",
        "                        - MADARA UCHIHA                          ",
        "                                                                 ",
      }
      
      -- Set header colors
      dashboard.section.header.opts.hl = "AkatsukiRed"
      
      -- Amaterasu Fire Animation
      local function animate_fire()
        local fire_chars = {"🔥", "🔥🔥", "🔥🔥🔥", "🔥🔥", "🔥"}
        local current_fire = 1
        
        vim.fn.timer_start(1000, function()
          current_fire = current_fire % #fire_chars + 1
          if vim.bo.filetype == "alpha" then
            vim.cmd("redraw")
          end
        end, {['repeat'] = -1})
      end
      
      -- Set black background for alpha dashboard
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "alpha",
        callback = function()
          vim.cmd("hi Normal guibg=#000000")
          vim.cmd("hi SignColumn guibg=#000000")
          vim.cmd("hi EndOfBuffer guibg=#000000")
          animate_fire()
        end,
      })
      
      alpha.setup(dashboard.opts)
      
      -- Additional Akatsuki-themed highlighting with black background
      vim.cmd([[
        highlight DashboardHeader guifg=#FF0000 gui=bold
        highlight DashboardFooter guifg=#696969 gui=italic
        highlight Normal guibg=#000000
        highlight SignColumn guibg=#000000
        highlight EndOfBuffer guibg=#000000
        highlight AmaterasuFire guifg=#FF6600 gui=bold
      ]])
    end,
  },
})
