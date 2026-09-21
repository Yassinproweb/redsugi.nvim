-- Color palette for Redsugi Neovim theme.
-- Ruby on Rails-inspired palette.
--
-- Brand anchors:
--   Rails red     #D30001  (Rails logo red)   -> accent, keyword, storage
--   Ruby red      #CC342D  (Ruby logo red)    -> accent_warm
--   Ruby crimson  #9B111E  (gemstone red)     -> accent_dim
-- Everything else (backgrounds, greens, blues, etc.) is tuned to sit
-- comfortably next to those reds: warm-tinted neutrals, sage green strings,
-- Ruby-symbol teal, and dusty steel/mauve secondaries. No yellow is rendered.

local M = {}

-- UI colors are shared between variants.
local ui = {
  -- Backgrounds (warm near-blacks, slightly tinted toward Rails red)
  bg              = "#181414",
  bg_dark         = "#141111",
  bg_darker       = "#100e0e",
  bg_alt          = "#1b1818",
  bg_line         = "#1e1a1a",
  bg_float        = "#161212",
  bg_float_alt    = "#171313",
  bg_hover        = "#1f1a1a",
  bg_menu_sel     = "#3d2222",
  bg_menu_inact   = "#322222",
  bg_dropdown     = "#221d1d",
  bg_dropdown_alt = "#2b2626",
  bg_fold         = "#2b1e1e",
  bg_peek         = "#261f1f",
  bg_peek_editor  = "#1f1b1b",
  bg_peek_match   = "#4a2424",
  bg_btn          = "#5a1a1a",
  bg_btn_hover    = "#6e2020",
  bg_gutter_item  = "#322222",
  bg_statusdbg    = "#7a1a1a",

  -- Borders
  border          = "#2c2626",
  border_strong   = "#3d2e2e",
  border_peek     = "#523838",
  border_focus    = "#d30001",
  border_tree     = "#5a4f4f",

  -- Foregrounds (warm off-white)
  fg              = "#e8e2de",
  fg_dim          = "#cbc3bf",
  fg_dim2         = "#9a908c",
  fg_mute         = "#786c6a",
  fg_gutter       = "#4a4242",
  fg_line_active  = "#ee5a4f",
  fg_invisible    = "#4a4141",

  -- Ruby on Rails red accents
  cursor          = "#e8302f",
  accent          = "#d30001", -- Rails red
  accent_dim      = "#9b111e", -- Ruby crimson
  accent_hint     = "#ee5a4f",
  accent_warm     = "#cc342d", -- Ruby red

  -- Git / diagnostics / diff
  green           = "#8fb573",
  red             = "#d30001",

  -- Kept for compatibility, but no yellow is rendered.
  yellow          = "#d9665f",

  blue            = "#6f87a3",
  blue_bright     = "#94abc7",
  cyan            = "#5bb8c4", -- Ruby symbol teal
  cyan_bright     = "#86d0d9",
  magenta         = "#b58fa8",
  magenta_bright  = "#d4a5c4",
  green_bright    = "#a9cf8c",
  red_bright      = "#ff5a52",

  -- Kept for compatibility, but uses a red/rose tone.
  yellow_bright   = "#ff9c92",

  -- Bracket rainbow
  bracket1        = "#9b5a5c",
  bracket2        = "#b87375",
  bracket3        = "#6d3f41",
  bracket_err     = "#d30001",

  -- Misc
  none            = "NONE",
  black           = "#000000",
  white           = "#ffffff",
}

-- Syntax colors for Redsugi Dark.
-- Warm neutral palette with Rails red keywords, sage strings, and teal/steel
-- secondaries.
local syntax_dark = {
  default      = "#e8e2de",
  comment      = "#8a7472",
  string       = "#8fbf7a",
  number       = "#7d9be0",
  keyword      = "#d30001",
  type         = "#a39a97",
  annotation   = "#5fa39a",
  invalid      = "#d30001",
  punctuation  = "#9b5a5c",
  operator     = "#e8e2de",
  storage      = "#d30001",
  self         = "#e8302f",
  func         = "#e8e2de",
  constant     = "#ee5a4f",
  markup_raw   = "#a39a97",
  diff_header  = "#8a7472",
  link         = "#94abc7",
}

-- Syntax colors for Redsugi Dark Flared.
-- Ruby/Rails reds, crimson, and muted rose tones.
local syntax_flared = {
  default      = "#d8c8c4",
  comment      = "#7a6a68",
  string       = "#e0917c",
  number       = "#ee5a4f",
  keyword      = "#e8302f",
  type         = "#8f9799",
  annotation   = "#5fa39a",
  invalid      = "#d30001",
  punctuation  = "#a08280",
  operator     = "#ee5a4f",
  storage      = "#d30001",
  self         = "#e8302f",
  func         = "#8f9799",
  constant     = "#ee5a4f",
  support      = "#ee5a4f",
  pointer      = "#f59090",
  markup_raw   = "#e0917c",
  markup_link  = "#8f9799",
  diff_header  = "#8a7472",
  link         = "#94abc7",
}

local function build(variant)
  local syntax = variant == "flared" and syntax_flared or syntax_dark
  local p = {}

  for k, v in pairs(ui) do
    p[k] = v
  end

  p.syntax = syntax
  p.variant = variant

  return p
end

function M.get(variant)
  if variant ~= "flared" then
    variant = "dark"
  end

  return build(variant)
end

return M
