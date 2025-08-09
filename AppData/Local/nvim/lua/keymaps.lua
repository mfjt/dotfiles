vim.keymap.set("n", "<Esc><Esc>", "<cmd>nohlsearch<CR>", { silent = true })
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

if not vim.g.vscode then
  vim.keymap.set("i", "jj", "<Esc>")
end
