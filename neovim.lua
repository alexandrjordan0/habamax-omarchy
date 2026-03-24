-- Habamax Unified single-file colorscheme
-- Derived from Omacarchy structure, inspired by original Habamax

local palette = {
	bg = "#1c1c1c", -- Habamax deep gray background
	bg_dark = "#161616", -- Slightly darker for cursorline/dark blocks
	fg = "#bcbcbc", -- Main Habamax silver/gray text
	fg_dim = "#808080", -- Muted gray for comments/secondary
	border = "#444444", -- Subtle border
	panel = "#262626", -- Float / Statusline background

	-- Accent tones (Habamax-style muted palette)
	blue = "#5f87af",
	green = "#5f875f",
	red = "#af5f5f",
	yellow = "#afaf5f",
	magenta = "#af5faf",
	cyan = "#5fafaf",
	white = "#ffffff",
}

local function hi(group, opts)
	local parts = { "highlight", group }
	if opts.fg then
		table.insert(parts, "guifg=" .. opts.fg)
	end
	if opts.bg then
		table.insert(parts, "guibg=" .. opts.bg)
	end
	if opts.gui then
		table.insert(parts, "gui=" .. opts.gui)
	end
	vim.cmd(table.concat(parts, " "))
end

local function apply()
	vim.o.termguicolors = true
	vim.o.background = "dark"
	vim.g.colors_name = "habamax-unified"

	vim.cmd("highlight clear")

	-- Core UI
	hi("Normal", { fg = palette.fg, bg = palette.bg })
	hi("CursorLine", { bg = palette.bg_dark })
	hi("CursorLineNr", { fg = palette.white, bg = palette.bg })
	hi("LineNr", { fg = palette.fg_dim, bg = palette.bg })
	hi("StatusLine", { fg = palette.fg, bg = palette.panel })
	hi("StatusLineNC", { fg = palette.fg_dim, bg = palette.panel })
	hi("TabLine", { fg = palette.fg_dim, bg = palette.bg_dark })
	hi("TabLineSel", { fg = palette.bg, bg = palette.fg, gui = "bold" })
	hi("VertSplit", { fg = palette.border, bg = palette.bg })
	hi("Visual", { bg = "#3e3e3e" })

	-- Syntax (Habamax uses very few colors, mostly grayscale + bold)
	hi("Comment", { fg = palette.fg_dim, gui = "italic" })
	hi("Constant", { fg = palette.fg })
	hi("String", { fg = palette.green })
	hi("Number", { fg = palette.magenta })
	hi("Identifier", { fg = palette.fg })
	hi("Function", { fg = palette.fg })
	hi("Statement", { fg = palette.fg, gui = "bold" })
	hi("PreProc", { fg = palette.blue })
	hi("Type", { fg = palette.fg, gui = "bold" })
	hi("Special", { fg = palette.fg })
	hi("Keyword", { fg = palette.fg, gui = "bold" })
	hi("Operator", { fg = palette.fg })
	hi("Todo", { fg = palette.bg, bg = palette.yellow })

	-- Diagnostics
	hi("DiagnosticError", { fg = palette.red })
	hi("DiagnosticWarn", { fg = palette.yellow })
	hi("DiagnosticInfo", { fg = palette.blue })
	hi("DiagnosticHint", { fg = palette.cyan })

	-- Telescope / UI elements
	hi("TelescopeNormal", { fg = palette.fg, bg = palette.panel })
	hi("TelescopeBorder", { fg = palette.border, bg = palette.panel })
	hi("TelescopePromptTitle", { fg = palette.bg, bg = palette.blue })
	hi("TelescopePreviewTitle", { fg = palette.bg, bg = palette.green })

	-- Treesitter overrides for that true Habamax look
	hi("@keyword", { fg = palette.fg, gui = "bold" })
	hi("@variable", { fg = palette.fg })
	hi("@function", { fg = palette.fg })
	hi("@string", { fg = palette.green })
	hi("@comment", { fg = palette.fg_dim, gui = "italic" })
	hi("@parameter", { fg = palette.fg })

	-- Terminal colors
	vim.g.terminal_color_0 = palette.bg
	vim.g.terminal_color_1 = palette.red
	vim.g.terminal_color_2 = palette.green
	vim.g.terminal_color_3 = palette.yellow
	vim.g.terminal_color_4 = palette.blue
	vim.g.terminal_color_5 = palette.magenta
	vim.g.terminal_color_6 = palette.cyan
	vim.g.terminal_color_7 = palette.fg
	vim.g.terminal_color_15 = palette.white
end

local aug = vim.api.nvim_create_augroup("HabamaxUnified", { clear = true })
vim.api.nvim_create_autocmd({ "VimEnter", "UIEnter" }, {
	group = aug,
	callback = function()
		vim.schedule(apply)
	end,
})

apply()

return { name = "habamax-unified" }
