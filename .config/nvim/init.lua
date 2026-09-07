vim.opt.number = true           -- Номера строк
vim.opt.relativenumber = true   -- Относительные номера (удобно для перемещения)
vim.opt.tabstop = 4             -- Ширина табуляции
vim.opt.shiftwidth = 4          -- Ширина отступа
vim.opt.expandtab = true        -- Превращать табы в пробелы
vim.opt.smartindent = true      -- Умные отступы
vim.opt.termguicolors = true    -- Поддержка 24-битного цвета
vim.opt.cursorline = true       -- Подсветка строки, где находится курсор
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.wrap = true
vim.opt.smoothscroll = true -- Enable smooth scrolling
vim.opt.scrolloff = 8 -- Minimum number of screen lines to keep above and below the cursor
vim.opt.updatetime = 50 -- Faster CursorHold events

-- Убрать "How-to disable mouse" из контекстного меню
vim.cmd([[
    aunmenu PopUp.How-to\ disable\ mouse
    aunmenu PopUp.-2-
]])

vim.opt.list = true
vim.opt.listchars = {
    tab = "→ ",
    trail = "•",
}

vim.cmd([[
    cnoreabbrev W w
    cnoreabbrev Q q
    cnoreabbrev Wq wq
    cnoreabbrev WQ wq
]])

vim.keymap.set('n', '<C-c>', '<Esc>', { noremap = true, silent = true })

-- print(" ")

-- ===================================================
-- 🚫 There are no arrowkeys for you anymore -- enjoy.
-- ===================================================

local arrows = { "<Up>", "<Down>", "<Left>", "<Right>" }
local modes = { "n", "i", "v" }

-- Список саркастичных приговоров
local roasts = {
    "Стрелочки? В моём Vim'е? Не думаю.",
    "Используй hjkl, воин клавиатуры!",
    "Ты серьёзно? Это же Vim, а не Notepad!",
    "Стрелки отключены. Добро пожаловать в 1976 год.",
    "Эта клавиша забанена пожизненно. Обжалованию не подлежит.",
    "🖕", 
}

for _, mode in ipairs(modes) do
  for _, key in ipairs(arrows) do
    vim.keymap.set(mode, key, function()
      local msg = roasts[math.random(#roasts)]
      vim.notify(msg, vim.log.levels.WARN, { title = "🖕 Стрелочки запрещены" })
    end, { noremap = true, silent = true })
  end
end

-- ========================================
-- Plugins
-- ========================================


-- ========================================
-- Custom Keymap
-- ========================================

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>o", "o<Esc>", { desc = "Новая строка снизу" })

vim.keymap.set("n", "<leader>O", "O<Esc>", { desc = "Новая строка сверху" })

vim.keymap.set('n', '<leader>e', vim.cmd.Ex, { desc = 'Open netrw' })

vim.keymap.set('n', '<leader>t', ':botright split | terminal<CR>', { desc = 'Открыть терминал снизу' })

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

vim.api.nvim_set_hl(0, "EndOfBuffer", {
    fg = colors.fg,
})

vim.opt.fillchars = {
    eob = "♰",
}

vim.cmd("highlight Normal guibg=none ctermbg=none")
