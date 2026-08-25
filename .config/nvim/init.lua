vim.opt.number = true           -- Номера строк
vim.opt.relativenumber = true   -- Относительные номера (удобно для перемещения)
vim.opt.tabstop = 4             -- Ширина табуляции
vim.opt.shiftwidth = 4          -- Ширина отступа
vim.opt.expandtab = true        -- Превращать табы в пробелы
vim.opt.smartindent = true      -- Умные отступы
vim.opt.termguicolors = true    -- Поддержка 24-битного цвета
vim.opt.cursorline = true       -- Подсветка строки, где находится курсор

vim.opt.clipboard = "unnamedplus"

vim.opt.langmap = "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ," ..
                  "фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"

vim.opt.fillchars = {
   eob = "✟",
}

-- ========================================
-- Gothic theme
-- ========================================

vim.cmd.colorscheme("catppuccin")

local colors = {
    bg         = "#08080c",
    bg_float   = "#0d0b10",
    bg_cursor  = "#111018",
    bg_visual  = "#2b1722",

    fg         = "#c8c3cc",
    fg_dim     = "#57525f",
    fg_comment = "#615b68",

    purple     = "#8a7199",
    red        = "#8b2438",
--    red_bright = "#a83a50",

    string     = "#a37487",
    number     = "#94677c",

    border     = "#211d26",
}

vim.api.nvim_set_hl(0, "Normal", {
    fg = colors.fg,
    bg = colors.bg,
})

vim.api.nvim_set_hl(0, "NormalFloat", {
    fg = colors.fg,
    bg = colors.bg_float,
})

vim.api.nvim_set_hl(0, "CursorLine", {
    bg = colors.bg_cursor,
})

vim.api.nvim_set_hl(0, "LineNr", {
    fg = colors.fg_dim,
})

vim.api.nvim_set_hl(0, "CursorLineNr", {
    fg = colors.red,
    bold = true,
})

vim.api.nvim_set_hl(0, "Comment", {
    fg = colors.fg_comment,
    italic = true,
})

vim.api.nvim_set_hl(0, "Keyword", {
    fg = colors.purple,
    italic = true,
})

vim.api.nvim_set_hl(0, "Function", {
    fg = colors.purple,
})

vim.api.nvim_set_hl(0, "String", {
    fg = colors.string,
})

vim.api.nvim_set_hl(0, "Number", {
    fg = colors.number,
})

vim.api.nvim_set_hl(0, "Constant", {
    fg = colors.number,
})

vim.api.nvim_set_hl(0, "Visual", {
    bg = colors.bg_visual,
})

vim.api.nvim_set_hl(0, "WinSeparator", {
    fg = colors.border,
})

vim.opt.fillchars = {
    eob = "✟",
}

vim.api.nvim_set_hl(0, "EndOfBuffer", {
    fg = colors.red,
})
