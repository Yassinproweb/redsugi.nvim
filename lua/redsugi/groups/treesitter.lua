-- Tree-sitter captures (`:help treesitter-highlight-groups`).
-- Mapping follows the VSCode redsugi token scope → nvim @capture.

local M = {}

function M.get(p)
  local s = p.syntax

  return {
    -- Comments
    ["@comment"]                    = { fg = s.comment, underline = true },
    ["@comment.documentation"]      = { fg = s.comment, underline = true },
    ["@comment.error"]              = { fg = p.red, underline = true },
    ["@comment.warning"]            = { fg = p.yellow, underline = true },
    ["@comment.todo"]               = { fg = p.bg, bg = p.accent, bold = true, underline = true },
    ["@comment.note"]               = { fg = p.bg, bg = p.blue_bright, bold = true, underline = true },

    -- Punctuation
    ["@punctuation"]                = { fg = s.punctuation, bold = true },
    ["@punctuation.delimiter"]      = { fg = s.punctuation, bold = true },
    ["@punctuation.bracket"]        = { fg = s.punctuation, bold = true },
    ["@punctuation.special"]        = { fg = s.punctuation, bold = true },

    -- Constants
    ["@constant"]                   = { fg = s.constant, bold = true },
    ["@constant.builtin"]           = { fg = s.constant, bold = true },
    ["@constant.macro"]             = { fg = s.keyword, bold = true },

    ["@string"]                     = { fg = s.string, underline = true },
    ["@string.documentation"]       = { fg = s.string, underline = true },
    ["@string.regexp"]              = { fg = s.annotation, underline = true },
    ["@string.escape"]              = { fg = s.annotation, underline = true },
    ["@string.special"]             = { fg = s.annotation, underline = true },
    ["@string.special.path"]        = { fg = s.link, underline = true },
    ["@string.special.symbol"]      = { fg = s.constant, underline = true },
    ["@string.special.url"]         = { fg = s.link, underline = true },

    ["@character"]                  = { fg = s.string, underline = true },
    ["@character.special"]          = { fg = s.annotation, underline = true },

    ["@number"]                     = { fg = s.number, bold = true },
    ["@number.float"]               = { fg = s.number, bold = true },
    ["@boolean"]                    = { fg = s.number, bold = true },

    -- Identifiers
    ["@variable"]                   = { fg = s.default },
    ["@variable.builtin"]           = { fg = s.self, bold = true },
    ["@variable.parameter"]         = { fg = s.default },
    ["@variable.member"]            = { fg = s.default },

    ["@property"]                   = { fg = s.default, bold = true },
    ["@field"]                      = { fg = s.default, underline = true, bold = true },

    -- Functions
    ["@function"]                   = { fg = s.func, bold = true },
    ["@function.builtin"]           = { fg = s.func, bold = true },
    ["@function.call"]              = { fg = s.func, bold = true },
    ["@function.macro"]             = { fg = s.default, bold = true },
    ["@function.method"]            = { fg = s.func, bold = true },
    ["@function.method.call"]       = { fg = s.func, bold = true },

    ["@constructor"]                = { fg = s.type, bold = true },
    ["@parameter"]                  = { fg = s.default, underline = true },

    -- Keywords / storage / operator
    ["@keyword"]                    = { fg = s.keyword, bold = true },
    ["@keyword.function"]           = { fg = s.keyword, bold = true },
    ["@keyword.operator"]           = { fg = s.operator, bold = true },
    ["@keyword.import"]             = { fg = s.keyword, bold = true },
    ["@keyword.type"]               = { fg = s.storage, bold = true },
    ["@keyword.modifier"]           = { fg = s.storage, bold = true },
    ["@keyword.repeat"]             = { fg = s.keyword, bold = true },
    ["@keyword.return"]             = { fg = s.keyword, bold = true },
    ["@keyword.debug"]              = { fg = s.keyword, bold = true },
    ["@keyword.exception"]          = { fg = s.keyword, bold = true },
    ["@keyword.conditional"]        = { fg = s.keyword, bold = true },
    ["@keyword.conditional.ternary"] = { fg = s.operator, bold = true },
    ["@keyword.directive"]          = { fg = s.keyword, bold = true },
    ["@keyword.directive.define"]   = { fg = s.keyword, bold = true },
    ["@keyword.storage"]            = { fg = s.storage, bold = true },
    ["@keyword.coroutine"]          = { fg = s.keyword, bold = true },

    ["@operator"]                   = { fg = s.operator, bold = true },

    -- Types
    ["@type"]                       = { fg = s.type, bold = true },
    ["@type.builtin"]               = { fg = s.type, bold = true },
    ["@type.definition"]            = { fg = s.type, bold = true },
    ["@type.qualifier"]             = { fg = s.storage, bold = true },

    ["@attribute"]                  = { fg = s.annotation },
    ["@attribute.builtin"]          = { fg = s.annotation },

    -- Tags (HTML, JSX, XML)
    ["@tag"]                        = { fg = s.storage, bold = true },
    ["@tag.builtin"]                = { fg = s.storage, bold = true },
    ["@tag.attribute"]              = { fg = s.type, bold = true },
    ["@tag.delimiter"]              = { fg = s.punctuation },

    -- Labels
    ["@label"]                      = { fg = s.keyword },

    -- Modules / namespaces
    ["@module"]                     = { fg = s.type, bold = true },
    ["@module.builtin"]             = { fg = s.type, bold = true },
    ["@namespace"]                  = { fg = s.type, bold = true },

    -- Diff
    ["@diff.plus"]                  = { fg = p.green },
    ["@diff.minus"]                 = { fg = p.red },
    ["@diff.delta"]                 = { fg = p.yellow },

    -- Markup
    ["@markup"]                     = { fg = s.default },
    ["@markup.strong"]              = { fg = p.fg, bold = true },
    ["@markup.emphasis"]            = { fg = p.fg, italic = true },
    ["@markup.italic"]              = { italic = true },
    ["@markup.strikethrough"]       = { strikethrough = true },
    ["@markup.underline"]           = { underline = true },

    ["@markup.heading"]             = { fg = s.storage, bold = true },
    ["@markup.heading.1"]           = { fg = s.storage, bold = true },
    ["@markup.heading.2"]           = { fg = s.storage, bold = true },
    ["@markup.heading.3"]           = { fg = s.keyword, bold = true },
    ["@markup.heading.4"]           = { fg = s.keyword, bold = true },
    ["@markup.heading.5"]           = { fg = s.type },
    ["@markup.heading.6"]           = { fg = s.type },

    ["@markup.quote"]               = { fg = p.fg_mute, underline = true },
    ["@markup.math"]                = { fg = s.number, bold = true },
    ["@markup.environment"]         = { fg = s.keyword, bold = true },
    ["@markup.environment.name"]    = { fg = s.type },

    ["@markup.link"]                = { fg = s.link, underline = true },
    ["@markup.link.label"]          = { fg = s.link },
    ["@markup.link.url"]            = { fg = s.link, underline = true },

    ["@markup.raw"]                 = { fg = s.markup_raw },
    ["@markup.raw.block"]           = { fg = s.markup_raw },
    ["@markup.raw.markdown_inline"] = { fg = s.markup_raw },

    ["@markup.list"]                = { fg = s.keyword },
    ["@markup.list.checked"]        = { fg = p.green },
    ["@markup.list.unchecked"]      = { fg = p.fg_mute },

    -- Misc
    ["@none"]                       = { fg = s.default },
    ["@text.literal"]               = { fg = s.markup_raw },
    ["@text.reference"]             = { fg = s.link },
    ["@text.title"]                 = { fg = s.storage, bold = true },
    ["@text.uri"]                   = { fg = s.link, underline = true },
    ["@text.emphasis"]              = { italic = true },
    ["@text.strong"]                = { bold = true },
    ["@text.diff.add"]              = { fg = p.green },
    ["@text.diff.delete"]           = { fg = p.red },

    -- Language specifics --------------------------------------------------

    -- Lua
    ["@constructor.lua"]            = { fg = s.punctuation, bold = true },

    -- TSX / JSX
    ["@tag.tsx"]                    = { fg = s.storage, bold = true },
    ["@tag.jsx"]                    = { fg = s.storage, bold = true },

    -- Rust lifetimes / attributes
    ["@attribute.rust"]             = { fg = s.annotation },
    ["@lsp.type.lifetime.rust"]     = { fg = s.annotation },

    -- Python decorators
    ["@function.decorator"]         = { fg = s.annotation },
    ["@attribute.python"]           = { fg = s.annotation },
  }
end

return M
