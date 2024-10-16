-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "gatekeeper",

  hl_override = {
    Comment = { italic = true, fg = "pink" },
    ["@comment"] = { italic = true, fg = "pink" },
  },
  transparency = true,
}

M.plugins = "custom.plugins"

return M
