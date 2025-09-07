# 🌑 Akatsuki Neovim Config

> "In the darkness, true power awakens."  

Akatsuki Neovim is not just a config it’s a **dark, legendary setup** forged for speed, elegance, and power.  
Inspired by the **Akatsuki clan’s aura** this config turns Neovim into a weapon of legends ⚔️.  

🔮 Features that make it special:
- 🌀 **Lightning-fast startup** – no wasted time, just pure focus.  
- 🎨 **Dark & aesthetic UI** – crafted for those who love hacker-style vibes.  
- ⚡ **Optimized for productivity** – coding, editing, or hacking, all in one flow.  
- 🛠️ **Plugin arsenal** – carefully picked tools for a legendary workflow.  

If you believe in standing apart, in walking the path of shadows…  
then **Akatsuki Neovim** is your ultimate companion. 🌑🔥  

---
## Preview

![Akatsuki Neovim Demo](https://github.com/user-attachments/assets/a5535da4-aea0-490f-8398-1928cb2b25ba)

# Functionality Section
⚡ A highly customized Neovim configuration powered with Lua.  
✨ Features:
📌 Functionality
- Editor Support: This config is made for Neovim (v0.9+ recommended).
- Plugin Manager: Uses Lazy.nvim for plugin installation & management.
- Theme: Default theme is TokyoNight, but can be changed easily.
- File Explorer: Includes Neo-tree which opens with Ctrl + x.
- Search: Integrated fzf-lua for file search (Leader + f) and live grep (Leader + g).
- Syntax Highlighting: Enabled with Treesitter.
- Performance: Optimized for speed with lazy loading.
# ⚡ Code Runner Integration
This Neovim configuration includes Code Runner, which allows you to run code files directly inside Neovim without manually compiling or executing them.
Run command: Ctrl + r
Press it on any supported file and Code Runner will automatically detect the language and execute the file accordingly.
# 🖥 Supported Languages
Language	File Extension	How it Runs / Compiles
- C	.c	gcc file.c -o /tmp/file && /tmp/file && rm /tmp/file
- C++	.cpp	g++ file.cpp -o /tmp/file && /tmp/file
- Python	.py	python3 -u file.py
- Java	.java	javac file.java && java file
- JavaScript	.js	node file.js
- TypeScript	.ts	deno run file.ts
- Rust	.rs	rustc file.rs && ./file
- Go	.go	go run file.go
- PHP	.php	php file.php
- Lua	.lua	lua file.lua
- Bash / Shell	.sh	bash file.sh
- HTML	.html	Opens in System Default Browser
 # 📝 Neovim Basics & Functionalities
This section explains basic Neovim functionalities, keybindings, modes, and how to work with input and files.
# 🔹 Switching Modes
- Alt+i → insert mode 
- ALt+n → insert mode 
- Esc → back to normal mode
  
# 🔹 Save and Quit
- :w → save file
- :q → quit
- :wq → save and quit
- :q! → quit without saving

# 🔹 Navigation
- h → move left
- l → move right
- j → move down
- k → move up
- 0 → start of line
- $ → end of line
- gg → go to top of file
- G → go to bottom

# 🔹 Copy, Paste, Delete
- yy → copy line (yank)
- p → paste
- dd → delete line
- u → undo
- ## 📦 Requirements

Before installing **Akatsuki Neovim**, make sure you have these installed:

- [Neovim](https://neovim.io/) **v0.9+** (latest recommended)
- [Git](https://git-scm.com/) – for cloning the config & managing plugins
- [Node.js](https://nodejs.org/) (for LSP, Treesitter, and plugins that need it)
- [npm](https://www.npmjs.com/) (comes with Node.js, needed for some plugins)
- [Python 3](https://www.python.org/) + `pip` (for Python-based plugins)
- [ripgrep](https://github.com/BurntSushi/ripgrep) – required for Telescope fuzzy finding
- A terminal that supports **true colors** (kitty, alacritty, wezterm, etc.)

> ⚠️ Optional but recommended:
> - `lua` (Neovim uses Lua for configs)
---
## ⚔️ Installation

Clone this repo into your Neovim config directory:

```bash
git clone https://github.com/HACK-LEGEND-HAMID/my-akatsuki-neovim ~/.config/nvim
```
## 🌐 Socials:
[![Discord](https://img.shields.io/badge/Discord-%237289DA.svg?logo=discord&logoColor=white)](https://discord.gg/redberry03373) [![Instagram](https://img.shields.io/badge/Instagram-%23E4405F.svg?logo=Instagram&logoColor=white)](https://instagram.com/hacked_sea) 

