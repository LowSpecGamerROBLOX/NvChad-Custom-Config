-- init.lua
vim.opt.autochdir = true
vim.opt.relativenumber = true
local currentDir = string.gsub(vim.loop.cwd(), "[^%S\n]+", "")
if currentDir == "/" then vim.cmd(":cd ~/Developer") end
if vim.g.neovide then
  vim.o.guifont = "Liga SFMono Nerd Font"
  -- padding
  vim.g.neovide_padding_top = 8
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 8
  vim.g.neovide_padding_left = 8
  -- refresh rate
  vim.g.neovide_refresh_rate = 240
end
