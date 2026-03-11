--vim.wo.number = true
vim.g.mouse = 'a'
vim.opt.encoding="utf-8"
vim.opt.relativenumber = true
vim.opt.number = true

-- scroll, tab, indentation
vim.opt.scrolloff = 7
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true

vim.opt.fileformat = "unix"

-- Enabling virtual text for in-line debugging
vim.diagnostic.config({ virtual_text = true })
