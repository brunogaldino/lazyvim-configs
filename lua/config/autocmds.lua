-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- Kill all prettierd and eslint_d instances after 5m not running
vim.api.nvim_create_autocmd("ExitPre", {
  group = augroup("StopNeovimDaemons"),
  callback = function()
    vim.fn.jobstart(vim.fn.expand("$SCRIPTS") .. "/nvim/stop-nvim-daemons.sh", { detach = true })
  end,
})
