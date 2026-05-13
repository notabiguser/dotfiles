local opt = vim.opt

opt.number = true           -- Номера строк
opt.relativenumber = true   -- Относительные номера (удобно для перемещения)
opt.tabstop = 4             -- Ширина табуляции
opt.shiftwidth = 4          -- Ширина отступа
opt.expandtab = true        -- Превращать табы в пробелы
opt.smartindent = true      -- Умные отступы
opt.termguicolors = true    -- Поддержка 24-битного цвета
opt.cursorline = true       -- Подсветка строки, где находится курсор

vim.cmd.colorscheme("catppuccin")
