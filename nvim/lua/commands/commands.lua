vim.api.nvim_create_user_command('EE', function()
  local is_enabled = vim.diagnostic.is_enabled()
  if is_enabled then
    vim.diagnostic.enable(false)
  else
    vim.diagnostic.enable()
  end
end, {})

vim.api.nvim_create_user_command('CPF', function()
  vim.fn.setreg('+', vim.fn.expand('%:p'))
  print('Copied: ' .. vim.fn.expand('%:p'))
end, {})

vim.api.nvim_create_user_command('CPR', function()
  vim.fn.setreg('+', vim.fn.expand('%'))
  print('Copied: ' .. vim.fn.expand('%'))
end, {})
