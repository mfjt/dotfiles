vim.keymap.set("n", "<Esc><Esc>", "<cmd>nohlsearch<CR>", { silent = true })
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "s", '"_s')
vim.keymap.set("n", "S", '"_S')
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "X", '"_X')
vim.keymap.set("v", "s", '"_s')
vim.keymap.set("v", "S", '"_S')
vim.keymap.set("v", "x", '"_x')
vim.keymap.set("v", "X", '"_X')

if not vim.g.vscode then
  vim.keymap.set("i", "jj", "<Esc>")
end
