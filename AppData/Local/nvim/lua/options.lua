vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.clipboard = 'unnamedplus'

if not vim.g.vscode then
  vim.opt.backup = true
  vim.opt.backupdir:remove(".")
  vim.opt.undofile = true

  vim.opt.cursorline = true
  vim.opt.list = true
  vim.opt.listchars = { eol = "↲", tab = "»·", trail = "·", extends = "»", precedes = "«", nbsp = "%" }
  vim.opt.number = true
  vim.opt.relativenumber = true
else
  vim.opt.swapfile = false
end
