-- Basic --
vim.opt.encoding  = "utf-8"
vim.opt.hidden    = true
vim.opt.mouse     = "a"
vim.opt.clipboard = "unnamedplus"

-- UI --
vim.opt.number         = true
vim.opt.relativenumber = true
vim.opt.cursorline     = true
vim.opt.showmode       = true
vim.opt.termguicolors  = true

-- Indent --
vim.opt.tabstop     = 2
vim.opt.shiftwidth  = 2
vim.opt.expandtab   = true
vim.opt.smartindent = true
vim.opt.autoindent  = true

-- Other --
vim.opt.incsearch    = true
vim.opt.hlsearch     = true
vim.opt.ignorecase   = true
vim.opt.smartcase    = true
vim.opt.undofile     = true
vim.opt.backup       = false
vim.opt.writebackup  = false
vim.opt.swapfile     = false
vim.opt.wrap         = true
vim.opt.linebreak    = true
vim.opt.scrolloff    = 5
vim.opt.updatetime   = 300
vim.opt.timeoutlen   = 500
vim.opt.endofline    = true
vim.opt.fixendofline = true

-- Keys --
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<Esc><Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeOpen<CR>")
vim.keymap.set("n", "<leader>d", "<C-]>")
vim.keymap.set("n", "<leader>D", "<C-t>")

-- Cmd --
vim.cmd("colorscheme retrobox") -- habamax, retrobox, torte 

-- Require --
require("plugins")
