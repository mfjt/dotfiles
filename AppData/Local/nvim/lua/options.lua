vim.opt.clipboard = 'unnamedplus'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.swapfile = false
vim.opt.undofile = true

if not vim.g.vscode then
  vim.opt.cursorline = true
  vim.opt.listchars = { eol = "↲", tab = "»·", trail = "·", extends = "»", precedes = "«", nbsp = "%" }
  vim.opt.list = true
  vim.opt.number = true
  vim.opt.relativenumber = true
  vim.opt.smartindent = true
end
