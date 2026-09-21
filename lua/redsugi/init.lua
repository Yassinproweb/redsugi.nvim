-- redsugi Neovim port of the VSCode theme by @ahatem.
-- https://github.com/ahatem/vscode-redsugi

local config = require("redsugi.config")
local theme  = require("redsugi.theme")

local M = {}

--- Optional setup. Stores user options so `:colorscheme redsugi-dark`
--- / `redsugi-flared` picks them up later.
function M.setup(opts)
  config.setup(opts)
end

--- Explicitly load a variant. Useful if you want to switch at runtime:
---     require("redsugi").load("flared")
function M.load(variant, opts)
  variant = variant or config.options.variant
  local merged = vim.tbl_deep_extend("force", config.options, opts or {})
  theme.load(variant, merged)
end

--- Return the raw palette for external integrations (e.g. lualine theme).
function M.palette(variant)
  return require("redsugi.palette").get(variant or config.options.variant)
end

return M
