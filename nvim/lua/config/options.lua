-- Line numbers
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true

-- Tabbing
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.autoindent = true

-- Search settings
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Colors
vim.opt.termguicolors = true

-- Hide End-of-Buffer symbols
vim.opt.fillchars:append({ eob = " " })
