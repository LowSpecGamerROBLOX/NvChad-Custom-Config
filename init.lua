--
--  ██████╗ ██╗   ██╗██╗██╗     ██╗     ███████╗██████╗ ███╗   ███╗ ██████╗                              
-- ██╔════╝ ██║   ██║██║██║     ██║     ██╔════╝██╔══██╗████╗ ████║██╔═══██╗      
-- ██║  ███╗██║   ██║██║██║     ██║     █████╗  ██████╔╝██╔████╔██║██║   ██║                  
-- ██║   ██║██║   ██║██║██║     ██║     ██╔══╝  ██╔══██╗██║╚██╔╝██║██║   ██║                             
-- ╚██████╔╝╚██████╔╝██║███████╗███████╗███████╗██║  ██║██║ ╚═╝ ██║╚██████╔╝                             
--  ╚═════╝  ╚═════╝ ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝                              
--                                                                                                       
-- ███╗   ██╗██╗   ██╗ ██████╗██╗  ██╗ █████╗ ██████╗      ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗ 
-- ████╗  ██║██║   ██║██╔════╝██║  ██║██╔══██╗██╔══██╗    ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝ 
-- ██╔██╗ ██║██║   ██║██║     ███████║███████║██║  ██║    ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗
-- ██║╚██╗██║╚██╗ ██╔╝██║     ██╔══██║██╔══██║██║  ██║    ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║
-- ██║ ╚████║ ╚████╔╝ ╚██████╗██║  ██║██║  ██║██████╔╝    ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝
-- ╚═╝  ╚═══╝  ╚═══╝   ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝      ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝                                                              
--
-- filename -  init.lua
-- last edited - Apr 22, 2023
--

-- Base settings
vim.opt.autochdir = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Configuration for Neovide
if vim.g.neovide then
    vim.o.guifont = "Liga SFMono Nerd Font, Iosevka Nerd Font:h14"
    -- line spacing
    vim.opt.linespace = 0
    -- padding
    vim.g.neovide_padding_top = 33
    vim.g.neovide_padding_bottom = 0
    vim.g.neovide_padding_right = 8
    vim.g.neovide_padding_left = 8
    -- refresh rate
    vim.g.neovide_refresh_rate = 240
    -- other
    vim.g.neovide_scroll_animation_length = 0.3
    vim.g.neovide_remember_window_size = true
    vim.g.neovide_cursor_vfx_mode = "pixiedust"
end

-- Auto cd to projects directory
if string.gsub(vim.loop.cwd(), "[^%S\n]+", "") == "/" then
    vim.cmd(":cd ~/Developer")
end

-- CD to project folders
vim.cmd("command! -nargs=0 Dev :cd ~/Developer/")
vim.cmd("command! -nargs=0 Devp :cd ~/Developer/Private/")
vim.cmd("command! -nargs=0 DevP :cd ~/Developer/Public/")
vim.cmd("command! -nargs=0 Config :cd ~/.config/nvim/lua/custom/") -- CD to NvChad config fast
vim.cmd("command! -nargs=0 ASRS :cd ~/Developer/Private/A Simple Roblox Survey/") -- Project folder for A Simple Roblox Survey
