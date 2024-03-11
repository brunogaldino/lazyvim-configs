-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.relativenumber = false

-- vim.o.statuscolumn = '%s %l %{v:lnum<line(".")?"-":""}%r'
-- vim.o.statuscolumn='%s %#Visual#%l%1* %{v:lnum<line(".")?"-":""}%r'
--
vim.o.foldcolumn = "1" -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true