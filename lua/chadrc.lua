-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}


M.ui = {
	theme = "gatekeeper",

	 hl_override = {
	 	Comment = { italic = true , fg = "pink" },
	 	["@comment"] = { italic = true, fg = "pink"},
	},
  transparency=true,
}
M.plugins = 'custom.plugins'
return M
