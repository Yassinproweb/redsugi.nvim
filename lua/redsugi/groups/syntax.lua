-- Legacy Vim syntax groups (the `:help group-name` set).
-- These are still used by non-treesitter filetypes and as fallbacks.

local M = {}

function M.get(p)
  local s = p.syntax

  local groups = {
    Comment          = { fg = s.comment, underline = true },

    Constant         = { fg = s.constant },
    String           = { fg = s.string, underline = true },
    Character        = { fg = s.string, underline = true },
    Number           = { fg = s.number, bold = true },
    Float            = { fg = s.number, bold = true },
    Boolean          = { fg = s.number, bold = true },

    Identifier       = { fg = s.default },
    Function         = { fg = s.func, bold = true },

    Statement        = { fg = s.keyword, bold = true },
    Conditional      = { fg = s.keyword, bold = true },
    Repeat           = { fg = s.keyword, underline = true },
    Label            = { fg = s.keyword },
    Operator         = { fg = s.operator, bold = true },
    Keyword          = { fg = s.keyword, bold = true },
    Exception        = { fg = s.keyword, bold = true },

    PreProc          = { fg = s.keyword, bold = true },
    Include          = { fg = s.keyword, bold = true },
    Define           = { fg = s.keyword, bold = true },
    Macro            = { fg = s.default, bold = true, underline = true },
    PreCondit        = { fg = s.keyword, bold = true },

    Type             = { fg = s.type, bold = true },
    StorageClass     = { fg = s.storage, bold = true },
    Structure        = { fg = s.type, bold = true },
    Typedef          = { fg = s.type },

    Special          = { fg = s.type, bold = true, underline = true },
    SpecialChar      = { fg = s.annotation, bold = true, underline = true },
    Tag              = { fg = s.storage, bold = true },
    Delimiter        = { fg = s.punctuation, bold = true },
    SpecialComment   = { fg = s.comment, bold = true, underline = true },
    Debug            = { fg = p.yellow, underline = true },

    Underlined       = { fg = s.link, underline = true },
    Ignore           = { fg = p.fg_mute, underline = true },
    Error            = { fg = s.invalid, bold = true },
    Todo             = { fg = p.bg, bg = p.accent, bold = true, underline = true },

    -- Common additions
    qfLineNr         = { fg = p.fg_mute },
    qfFileName       = { fg = p.accent },
    helpCommand      = { fg = s.keyword, bold = true },
    helpExample      = { fg = s.string, underline = true },
  }

  return groups
end

return M
