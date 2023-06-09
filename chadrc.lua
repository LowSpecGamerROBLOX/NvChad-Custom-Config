-- @name chadrc.lua
-- @author LowSpecGamerROBLOX
-- @description NvChad custom configuration
-- @date 23-04-03
-- @note NvChad themes at bottom of file

local config = {}

config.plugins = "custom.plugins"

config.ui = {

  -- base46
  lsp_semantic_tokens = true, -- needs nvim v0.9, just adds highlight groups for lsp semantic tokens

  theme = "blossom_light",
  theme_toggle = {"blossom_light", "nord"},

  -- cmp themeing
  cmp = {
    icons = true,
    lspkind_text = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
    border_color = "grey_fg", -- only applicable for "default" style, use color names from base30 variables
    selected_item_bg = "colored", -- colored / simple
  },

  telescope = { style = "borderless" }, -- borderless / bordered

  ----- nvchad ui modules -----
  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "round",
    overriden_modules = nil,
  },

  -- nvdash (dashboard)
  nvdash = {
    load_on_startup = true,
    

    header = {
      "           ▄ ▄                   ",
      "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
      "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
      "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
      "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
      "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
      "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
      "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
      "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
    },

    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc b m", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },

  cheatsheet = { theme = "grid" }, -- simple/grid

  lsp = {
    -- show function signatures i.e args as you type
    signature = {
      disabled = false,
      silent = true, -- silences 'no signature help available' message from appearing
    },
  },

}

return config

-- nvchad.com themes --
--
-- nord
-- blossom_light
-- nord
-- ayu_light
-- bearded-arc
-- blossom_light
-- catppuccin
-- blossom_light
-- nord
-- blossom_light
-- dark_horizon
-- decay
-- nord
-- blossom_light
-- nord
-- nord
-- falcon
-- gatekeeper
-- nord -- !!
-- nord -- !!
-- nord
-- nord_light
-- nord
-- jellybeans
-- kanagawa
-- melange
-- monekai
-- monochrome
-- mountain
-- nightfox
-- nightlamp
-- nightowl
-- blossom_light -- !!
-- oceanic-light
-- oceanic-next
-- one_light
-- nord
-- blossom_light
-- blossom_light_light
-- solarized_dark
-- nord
