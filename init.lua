-- init.lua
vim.opt.autochdir = true
vim.opt.relativenumber = true
local currentDir = string.gsub(vim.loop.cwd(), "[^%S\n]+", "")
if currentDir == "/" then vim.cmd(":cd ~/Developer") end

