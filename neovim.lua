-- Omarchy color theme: habamax (built from scratch)
-- All hex values sourced directly from neovim/neovim runtime/colors/habamax.vim
-- Maintainer of original: Maxim Kim <habamax@gmail.com>

vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.g.colors_name = "habamax"

local hi = vim.api.nvim_set_hl

-- ── Reset ────────────────────────────────────────────────────────────────────
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end

-- ── Terminal palette (colors 0-15) ───────────────────────────────────────────
vim.g.terminal_color_0 = "#1c1c1c"
vim.g.terminal_color_1 = "#d70000"
vim.g.terminal_color_2 = "#5faf5f"
vim.g.terminal_color_3 = "#af875f"
vim.g.terminal_color_4 = "#5f87af"
vim.g.terminal_color_5 = "#af87af"
vim.g.terminal_color_6 = "#5f8787"
vim.g.terminal_color_7 = "#9e9e9e"
vim.g.terminal_color_8 = "#767676"
vim.g.terminal_color_9 = "#d75f87"
vim.g.terminal_color_10 = "#87d787"
vim.g.terminal_color_11 = "#d7af87"
vim.g.terminal_color_12 = "#5fafd7"
vim.g.terminal_color_13 = "#d787d7"
vim.g.terminal_color_14 = "#87afaf"
vim.g.terminal_color_15 = "#bcbcbc"

-- ── Editor UI ────────────────────────────────────────────────────────────────
hi(0, "Normal", { fg = "#c7c7c7", bg = "#1c1c1c" })
hi(0, "Cursor", { fg = "#000000", bg = "#dadada" })
hi(0, "lCursor", { fg = "#1c1c1c", bg = "#5fff00" })
hi(0, "CursorLine", { bg = "#303030" })
hi(0, "CursorColumn", { bg = "#303030" })
hi(0, "CursorLineNr", { fg = "#dadada", bold = true })
hi(0, "LineNr", { fg = "#585858" })
hi(0, "LineNrAbove", { fg = "#585858" })
hi(0, "LineNrBelow", { fg = "#585858" })
hi(0, "ColorColumn", { bg = "#3a3a3a" })
hi(0, "SignColumn", {})
hi(0, "NonText", { fg = "#585858" })
hi(0, "EndOfBuffer", { fg = "#585858" })
hi(0, "SpecialKey", { fg = "#585858" })
hi(0, "Conceal", { fg = "#585858" })
hi(0, "FoldColumn", { fg = "#585858" })
hi(0, "Folded", { fg = "#9e9e9e", bg = "#262626" })
hi(0, "MatchParen", { fg = "#ff00af", bold = true })

-- ── Selection & search ───────────────────────────────────────────────────────
hi(0, "Visual", { fg = "#87afaf", bg = "#1c1c1c", reverse = true })
hi(0, "VisualNOS", { fg = "#1c1c1c", bg = "#5f8787" })
hi(0, "Search", { fg = "#5fafd7", bg = "#1c1c1c", reverse = true })
hi(0, "IncSearch", { fg = "#ffaf5f", bg = "#1c1c1c", reverse = true })
hi(0, "CurSearch", { fg = "#ffaf5f", bg = "#1c1c1c", reverse = true })

-- ── Status & tab lines ───────────────────────────────────────────────────────
hi(0, "StatusLine", { fg = "#1c1c1c", bg = "#9e9e9e" })
hi(0, "StatusLineNC", { fg = "#1c1c1c", bg = "#767676" })
hi(0, "TabLine", { fg = "#1c1c1c", bg = "#767676" })
hi(0, "TabLineFill", { fg = "#1c1c1c", bg = "#767676" })
hi(0, "TabLineSel", { fg = "#1c1c1c", bg = "#9e9e9e", bold = true })
hi(0, "VertSplit", { link = "StatusLineNC" })
hi(0, "WinSeparator", { link = "StatusLineNC" })

-- ── Popup menu ───────────────────────────────────────────────────────────────
hi(0, "Pmenu", { bg = "#3a3a3a" })
hi(0, "PmenuSel", { bg = "#585858" })
hi(0, "PmenuSbar", {})
hi(0, "PmenuThumb", { bg = "#767676" })

-- ── Messages & misc UI ───────────────────────────────────────────────────────
hi(0, "Title", { bold = true })
hi(0, "Directory", { fg = "#87afaf", bold = true })
hi(0, "WildMenu", { fg = "#1c1c1c", bg = "#d7af87", bold = true })
hi(0, "Error", { fg = "#d70000", bg = "#1c1c1c", reverse = true })
hi(0, "ErrorMsg", { fg = "#d70000", bg = "#1c1c1c", reverse = true })
hi(0, "MoreMsg", { fg = "#5faf5f" })
hi(0, "ModeMsg", { bold = true })
hi(0, "Question", { fg = "#d7af87" })
hi(0, "WarningMsg", { fg = "#d75f87" })
hi(0, "Underlined", { underline = true })
hi(0, "Ignore", {})
hi(0, "Debug", { fg = "#5f8787" })
hi(0, "debugPC", { fg = "#1c1c1c", bg = "#5f87af" })
hi(0, "debugBreakpoint", { fg = "#1c1c1c", bg = "#d75f87" })

-- ── Spell ─────────────────────────────────────────────────────────────────────
hi(0, "SpellBad", { sp = "#d75f5f", undercurl = true })
hi(0, "SpellCap", { sp = "#ffaf5f", undercurl = true })
hi(0, "SpellLocal", { sp = "#5fd75f", undercurl = true })
hi(0, "SpellRare", { sp = "#d787d7", undercurl = true })

-- ── Syntax groups ────────────────────────────────────────────────────────────
hi(0, "Comment", { fg = "#767676" })
hi(0, "Constant", { fg = "#d75f87" })
hi(0, "String", { fg = "#5faf5f" })
hi(0, "Character", { fg = "#87d787" })
hi(0, "Identifier", { fg = "#87afaf" })
hi(0, "Statement", { fg = "#af87af" })
hi(0, "PreProc", { fg = "#af875f" })
hi(0, "Type", { fg = "#5f87af" })
hi(0, "Special", { fg = "#5f8787" })
hi(0, "Todo", { fg = "#dadada", bold = true })

-- ── Diff ─────────────────────────────────────────────────────────────────────
hi(0, "DiffAdd", { fg = "#5faf5f", reverse = true })
hi(0, "DiffChange", { fg = "#5f87af", reverse = true })
hi(0, "DiffText", { fg = "#af87af", reverse = true })
hi(0, "DiffDelete", { fg = "#d70000", reverse = true })
hi(0, "Added", { fg = "#5fd75f" })
hi(0, "Changed", { fg = "#ffaf5f" })

-- ── Diagnostics ──────────────────────────────────────────────────────────────
hi(0, "DiagnosticError", { fg = "#d70000" })
hi(0, "DiagnosticWarn", { fg = "#d7af87" })
hi(0, "DiagnosticInfo", { fg = "#87afaf" })
hi(0, "DiagnosticHint", { fg = "#767676" })
hi(0, "DiagnosticVirtualTextError", { fg = "#d70000" })
hi(0, "DiagnosticVirtualTextWarn", { fg = "#d7af87" })
hi(0, "DiagnosticVirtualTextInfo", { fg = "#87afaf" })
hi(0, "DiagnosticVirtualTextHint", { fg = "#767676" })
hi(0, "DiagnosticFloatingError", { fg = "#d70000" })
hi(0, "DiagnosticFloatingWarn", { fg = "#d7af87" })
hi(0, "DiagnosticFloatingInfo", { fg = "#87afaf" })
hi(0, "DiagnosticFloatingHint", { fg = "#767676" })
hi(0, "DiagnosticUnderlineError", { sp = "#d70000", undercurl = true })
hi(0, "DiagnosticUnderlineWarn", { sp = "#d7af87", undercurl = true })
hi(0, "DiagnosticUnderlineInfo", { sp = "#87afaf", undercurl = true })
hi(0, "DiagnosticUnderlineHint", { sp = "#767676", undercurl = true })

hi(0, "Number", { link = "Constant" })
hi(0, "Float", { link = "Constant" })
hi(0, "Function", { link = "Identifier" })
hi(0, "StatusLineTerm", { link = "StatusLine" })
hi(0, "StatusLineTermNC", { link = "StatusLineNC" })
hi(0, "Terminal", { link = "Normal" })

-- ── Treesitter overrides ──────────────────────────────────────────────────────
hi(0, "@constant.macro", { fg = "#af875f" }) -- MACRO_NAME after #define
hi(0, "@function.macro", { fg = "#af875f" }) -- function-like macros
hi(0, "@keyword.directive", { fg = "#af875f" }) -- #define, #include, #ifdef…
hi(0, "@keyword.directive.define", { fg = "#af875f" }) -- #define specifically
hi(0, "@variable", { fg = "#87afaf" }) -- variable names
