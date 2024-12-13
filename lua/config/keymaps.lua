-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")
local keymap = vim.keymap.set
local opts = { silent = true }

-- General
keymap("n", "<leader>bc", "<cmd>BufferLinePickClose<CR>", { silent = true, desc = "Delete specific buffer" })
keymap("n", "<ScrollWheelLeft>", "<nop>", opts)
keymap("n", "<ScrollWheelRight>", "<nop>", opts)

-- LSP
keymap("n", "<C-,>", vim.diagnostic.goto_next, { silent = true, desc = "Jump to the next diagnostic in file" })
keymap("n", "<C-.>", "<cmd> lua vim.lsp.buf.code_action()<CR>", opts)

-- OIl
-- keymap("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })

-- Comment.nvim
keymap("n", "<C-/>", function()
  require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1)
end, opts)
keymap("v", "<C-/>", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", opts)

-- Terminal
keymap("n", "<C-;>", function()
  Snacks.terminal()
end, { desc = "Terminal (cwd)" })
keymap("t", "<C-;>", "<cmd>close<cr>", { desc = "Hide Terminal" })
keymap("t", "<C-l>", "clear<cr>", { desc = "Clear Terminal" })

--ToggleTerm
-- keymap("n", "<C-;>", function()
--   local count = vim.v.count1
--   require("toggleterm").toggle(count, 0, LazyVim.root.get(), "float")
-- end, { desc = "ToggleTerm (float root_dir)" })
--
-- keymap("t", "<C-l>", "<cmd>TermExec cmd=' clear'<cr>", { desc = "Hide Terminal" })
--
-- RestNvim
keymap(
  "n",
  "<leader>che",
  ":lua require('rest-nvim').run()<CR>",
  { silent = true, desc = "Execute request under the cursor" }
)
keymap(
  "n",
  "<leader>chp",
  ":lua require('rest-nvim').run(true)<CR>",
  { silent = true, desc = "Preview request with cuRL command" }
)
keymap("n", "<leader>chl", ":lua require('rest-nvim').last()<CR>", { silent = true, desc = "Re-run last request" })

-- DAP
-- keymap("n", "<F5>", function()
--   require("dap").continue()
-- end, { desc = "Continue" })
--
-- keymap("n", "<F6>", function()
--   require("dap").terminate()
-- end, { desc = "Terminate" })
--
-- keymap("n", "<F9>", function()
--   require("dap").toggle_breakpoint()
-- end, { desc = "Toggle Breakpoint" })
--
-- keymap("n", "<F10>", function()
--   require("dap").step_over()
-- end, { desc = "Step Over" })
--
-- keymap("n", "<F11>", function()
--   require("dap").step_into()
-- end, { desc = "Steo Into" })
--
-- keymap("n", "<F12>", function()
--   require("dap").step_out()
-- end, { desc = "Step Out" })
