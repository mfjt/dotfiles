vim.keymap.set("n", "<Esc><Esc>", "<cmd>nohlsearch<CR>", { silent = true })
vim.keymap.set("n", "s", '"_s')
vim.keymap.set("n", "S", '"_S')
vim.keymap.set("n", "U", "<C-r>")
vim.keymap.set("n", "Y", "y$")
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "X", '"_X')
vim.keymap.set("v", "s", '"_s')
vim.keymap.set("v", "S", '"_S')
vim.keymap.set("v", "x", '"_x')
vim.keymap.set("v", "X", '"_X')

if not vim.g.vscode then
  vim.keymap.set("i", "jj", "<Esc>")
  vim.keymap.set("n", "j", 'v:count == 0 ? "gj" : "j"', { expr = true })
  vim.keymap.set("n", "k", 'v:count == 0 ? "gk" : "k"', { expr = true })
else
  vim.keymap.set("n", "j", 'v:count == 0 ? "gj" : "j"', { expr = true, remap = true })
  vim.keymap.set("n", "k", 'v:count == 0 ? "gk" : "k"', { expr = true, remap = true })
end
