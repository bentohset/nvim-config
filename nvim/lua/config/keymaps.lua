-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

vim.keymap.set(
  "n",
  "<leader>sg",
  require("fzf-lua").live_grep_resume,
  {noremap = true, silent = true, desc = "Grep last (root dir)"}
)

vim.keymap.set(
  "t",
  "<esc><esc>",
  "<C-\\><C-n>",
  { noremap = true, silent = true, desc = "Exit terminal mode" }
)
