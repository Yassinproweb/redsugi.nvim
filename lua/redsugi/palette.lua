-- Color palette for Redsugi Neovim theme.
-- Adapted from the original Redsugi VSCode palette with a
-- Ruby on Rails-inspired red accent palette.

local M = {}

-- UI colors are shared between variants.
local ui = {
  -- Backgrounds
  bg              = "#161618",
  bg_dark         = "#131314",
  bg_darker       = "#111111",
  bg_alt          = "#1a1a1d",
  bg_line         = "#1d1d1c",
  bg_float        = "#151515",
  bg_float_alt    = "#151616",
  bg_hover        = "#1c1c1c",
  bg_menu_sel     = "#3a2426",
  bg_menu_inact   = "#322527",
  bg_dropdown     = "#20201f",
  bg_dropdown_alt = "#292928",
  bg_fold         = "#2a2021",
  bg_peek         = "#252122",
  bg_peek_editor  = "#1f1d1e",
  bg_peek_match   = "#40282a",
  bg_btn          = "#4a2224",
  bg_btn_hover    = "#5a292b",
  bg_gutter_item  = "#322527",
  bg_statusdbg    = "#641f22",

  -- Borders
  border          = "#2a2a28",
  border_strong   = "#3a302f",
  border_peek     = "#4d3a3a",
  border_focus    = "#cc0000",
  border_tree     = "#565050",

  -- Foregrounds
  fg              = "#dddddd",
  fg_dim          = "#c9c4c4",
  fg_dim2         = "#969090",
  fg_mute         = "#756b6b",
  fg_gutter       = "#444444",
  fg_line_active  = "#e85d5d",
  fg_invisible    = "#464141",

  -- Ruby on Rails red accents
  cursor          = "#e3262e",
  accent          = "#cc0000",
  accent_dim      = "#a30000",
  accent_hint     = "#e85d5d",
  accent_warm     = "#d61f26",

  -- Git / diagnostics / diff
  green           = "#a3be8c",
  red             = "#cc0000",

  -- Kept for compatibility, but no yellow is rendered.
  yellow          = "#d66a6a",

  blue            = "#6c7a8a",
  blue_bright     = "#8fa3b3",
  cyan            = "#6ac6f2",
  cyan_bright    = "#8ac6f2",
  magenta         = "#b3a3d3",
  magenta_bright  = "#d3a3d3",
  green_bright    = "#c3de9c",
  red_bright      = "#ff6b6b",

  -- Kept for compatibility, but uses a red/rose tone.
  yellow_bright   = "#ff9a9a",

  -- Bracket rainbow
  bracket1        = "#8b6668",
  bracket2        = "#a27a7c",
  bracket3        = "#604345",
  bracket_err     = "#cc0000",

  -- Misc
  none            = "NONE",
  black           = "#000000",
  white           = "#ffffff",
}

-- Syntax colors for Redsugi Dark.
-- Dark neutral palette with Ruby on Rails red accents.
local syntax_dark = {
  default      = "#dddddd",
  comment      = "#8f7779",
  string       = "#98c379",
  number       = "#819aff",
  keyword      = "#cc0000",
  type         = "#939799",
  annotation   = "#678E87",
  invalid      = "#cc0000",
  punctuation  = "#8b6668",
  operator     = "#dddddd",
  storage      = "#cc0000",
  self         = "#e3262e",
  func         = "#dddddd",
  constant     = "#e85d5d",
  markup_raw   = "#939799",
  diff_header  = "#8f7779",
  link         = "#8fa3b3",
}

-- Syntax colors for Redsugi Dark Flared.
-- Red, crimson, and muted rose tones.
local syntax_flared = {
  default      = "#d1c0c0",
  comment      = "#75686a",
  string       = "#d98b78",
  number       = "#e85d5d",
  keyword      = "#e3262e",
  type         = "#899091",
  annotation   = "#678E87",
  invalid      = "#cc0000",
  punctuation  = "#957b7d",
  operator     = "#e85d5d",
  storage      = "#cc0000",
  self         = "#e3262e",
  func         = "#899091",
  constant     = "#e85d5d",
  support      = "#e85d5d",
  pointer      = "#f08a8a",
  markup_raw   = "#d98b78",
  markup_link  = "#899091",
  diff_header  = "#8f7779",
  link         = "#8fa3b3",
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
