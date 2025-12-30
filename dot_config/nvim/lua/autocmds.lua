if vim.fn.executable("zenhan") == 1 then
  for _, event in ipairs({ "InsertLeave", "CmdlineLeave" }) do
    vim.api.nvim_create_autocmd(event, {
      pattern = "*",
      callback = function()
        vim.fn.system("zenhan 0")
      end
    })
  end
end
