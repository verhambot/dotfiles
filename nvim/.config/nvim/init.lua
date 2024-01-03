vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

vim.opt.termguicolors = true
vim.g.nord_underline = true
vim.g.nord_italic = true
vim.g.nord_italic_comments = true
vim.cmd("colorscheme nord")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.number = true

vim.opt.mouse = "a"

vim.opt.colorcolumn = "80"

vim.opt.swapfile = false
vim.opt.undofile = true

vim.opt.wrap = false

vim.opt.clipboard:append("unnamedplus")

vim.opt.showmode = false
vim.opt.showcmd = false
vim.opt.ruler = false

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.g.loaded_python3_provider = 0
vim.g.loaded_python_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0

vim.keymap.set("", "<C-LEFT>", "<C-w>h", { noremap = true })
vim.keymap.set("", "<C-DOWN>", "<C-w>j", { noremap = true })
vim.keymap.set("", "<C-UP>", "<C-w>k", { noremap = true })
vim.keymap.set("", "<C-RIGHT>", "<C-w>l", { noremap = true })
